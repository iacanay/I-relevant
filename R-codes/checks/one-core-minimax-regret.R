# Section 4.2: exact Gaussian powers and worst-case regret, alpha = .10.
# Run from project root: Rscript R-codes/checks/one-core-minimax-regret.R
# No packages or simulation. Full alternative: s > 0, d2,d3 <= s.
alpha <- .10
c1 <- qnorm(1-alpha); c3 <- qnorm((1-alpha)^(1/3))
I <- function(s,r,b) integrate(function(z) dnorm(z)*pnorm(b-s-z-r),
                             -Inf,c3-s,rel.tol=1e-11,abs.tol=1e-12)$value
b <- uniroot(function(b) I(0,0,b)-pnorm(c3)^2,c(0,5),tol=1e-12)$root
power <- function(s,d2,d3) c(core=pnorm(s-c1),
  rectangle=1-pnorm(c3-s)*pnorm(c3-d2)*pnorm(c3-d3),
  gate=1-pnorm(c3-d2)*I(s,d3,b))
# Gate increases with each redundant mean: largest gain over core at d2=d3=s;
# largest core-minus-gate loss at d2,d3 -> -Inf.
gain <- function(s) {p<-power(s,s,s); unname(p['gate']-p['core'])}
ss <- seq(0,8,length.out=801)
ys <- vapply(ss,gain,0.)
ix <- which(ys[2:800] >= ys[1:799] & ys[2:800] >= ys[3:801])+1
opt <- lapply(ix,function(i) optimize(gain,c(ss[i-1],ss[i+1]),maximum=TRUE,tol=1e-10))
best <- opt[[which.max(vapply(opt,function(o)o$objective,0.))]]
s_slack <- (c1+c3)/2
slack_regret <- 2*pnorm((c3-c1)/2)-1
# Gate-minus-rectangle = Phi(c3-d2) H(s,d3); its supremum has d2 -> -Inf.
H <- function(s,r) pnorm(c3-s)*pnorm(c3-r)-I(s,r,b)
# Deterministic multistart on s in [0,8], gap in [0,16], with r >= -8.
objective <- function(z) -H(z[1],z[1]-z[2])
fits <- lapply(seq(0,8,length.out=13), function(s)
  lapply(seq(0,12,length.out=13), function(g)
    optim(c(s,g),objective,method='L-BFGS-B',lower=c(0,0),upper=c(8,16),
          control=list(factr=1e5,pgtol=1e-9))))
fits <- unlist(fits,recursive=FALSE)
fit <- fits[[which.min(vapply(fits,function(o)o$value,0.))]]
# Validate quadrature by reversing the integration order in the pair acceptance.
I_alt <- function(s,r) integrate(function(z) dnorm(z)*pnorm(pmin(c3,b-r-z)-s),
 -Inf, b-c3-r,rel.tol=1e-11)$value +
 integrate(function(z) dnorm(z)*pnorm(b-r-z-s),b-c3-r,Inf,rel.tol=1e-11)$value
checks <- rbind(c(0,0),c(c1,c1),c(best$maximum,best$maximum),
 c(fit$par[1],fit$par[1]-fit$par[2]),c(s_slack,-10))
err <- max(apply(checks,1,function(z) abs(I(z[1],z[2],b)-I_alt(z[1],z[2]))))
stopifnot(err < 1e-9, abs(power(0,0,0)['gate']-alpha)<1e-10,
 abs(power(c1,c1,c1)['gate']-.7134)<.0001,
 -fit$value < slack_regret)
cat(sprintf('c1 %.12f; c3 %.12f; b %.12f\n',c1,c3,b))
cat(sprintf('Core worst regret %.10f pp at s=d2=d3=%.10f\n',100*best$objective,best$maximum))
cat(sprintf('Gate worst regret %.10f pp at s=%.10f, both redundant means -> -Inf\n',100*slack_regret,s_slack))
cat(sprintf('Gate-minus-rectangle sup %.10f pp at s=%.10f, d3=%.10f, d2 -> -Inf\n',-100*fit$value,fit$par[1],fit$par[1]-fit$par[2]))
cat(sprintf('Rectangle worst regret %.10f pp\n',100*max(slack_regret,-fit$value)))
cat(sprintf('Independent integration-order check max error %.3g\n',err))
cat(sprintf('s>=8 regret bound %.3g; H for d3<=-8 bound %.3g\n',pnorm(c1-8),pnorm(c3-b-8)))
cat('Interior scalar maxima found:',length(ix),'\n')
# Bound H over the full domain, rather than relying on optimizer starts.
# H is an expectation of a fixed function in [-1,1], so each mean derivative
# has absolute value <= E|Z| = sqrt(2/pi). Rounding each coordinate to the
# nearest .1 grid point preserves r<=s, with total distance <= .1.
# For s>=8, H<=Phi(c3-s). For r<=-8, a gain requires X3>b-c3.
grid_max <- -Inf
for (s in seq(0,8,by=.1)) for (r in seq(-8,s,by=.1))
  grid_max <- max(grid_max,H(s,r))
H_bound <- max(grid_max+.1*sqrt(2/pi),pnorm(c3-8),pnorm(c3-b-8))
stopifnot(H_bound < slack_regret)
cat(sprintf('H global upper bound from grid + Lipschitz + tails: %.10f pp < %.10f pp\n',100*H_bound,100*slack_regret))
# Certify reported rounding for the core regret using a scalar interpolation
# bound. Along (s,s,s), gain = E_s[h(X)] for a fixed h in [-1,1].
# Its second derivative is bounded by E| (sum Z)^2-3 | <= sqrt(18).
# Hence each grid interval is bounded above by max endpoints + sqrt(18) h^2/8.
h <- .001
scalar_grid_max <- max(vapply(seq(0,8,by=h),gain,0.))
core_upper <- max(scalar_grid_max+sqrt(18)*h^2/8,pnorm(c1-8))
stopifnot(round(100*best$objective,2)==round(100*core_upper,2))
cat(sprintf('Core regret numerical lower %.10f pp; grid/curvature upper %.10f pp (quadrature tolerance 1e-11)\n',100*best$objective,100*core_upper))
