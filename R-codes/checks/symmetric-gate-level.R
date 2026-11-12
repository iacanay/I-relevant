# Calibrate Section 2.4 symmetric gate at .05 (old) and .10 (aligned level).
# Acceptance: X1,X2<=k and X1+X3,X2+X3<=b. Independent unit variances.
accept <- function(mu,k,b) {
 cut<-b-k
 pnorm(cut-mu[3])*pnorm(k-mu[1])*pnorm(k-mu[2])+
 integrate(function(z) dnorm(z-mu[3])*pnorm(b-z-mu[1])*pnorm(b-z-mu[2]),
           cut,Inf,rel.tol=1e-12,abs.tol=1e-13)$value
}
# Independent expression: integrate over max(X1,X2).
accept_alt <- function(mu,k,b) integrate(function(z) pnorm(b-z-mu[3])*
 (dnorm(z-mu[1])*pnorm(z-mu[2])+dnorm(z-mu[2])*pnorm(z-mu[1])),
 -Inf,k,rel.tol=1e-12,abs.tol=1e-13)$value
for(alpha in c(.05,.10)) {
 k<-qnorm((1-alpha)^(1/3))
 b<-uniroot(function(b) accept(c(0,0,0),k,b)-(1-alpha),c(-3,8),tol=1e-12)$root
 mu<-c(.1,-5,.1)
 maxpower<-1-prod(pnorm(k-mu));gatepower<-1-accept(mu,k,b)
 stopifnot(abs(accept(c(0,0,0),k,b)-(1-alpha))<1e-11,
 abs(accept(mu,k,b)-accept_alt(mu,k,b))<1e-11, maxpower>gatepower)
 cat(sprintf('alpha %.2f; k %.12f; b %.12f; max power %.12f; symmetric gate power %.12f\n',alpha,k,b,maxpower,gatepower))
}
