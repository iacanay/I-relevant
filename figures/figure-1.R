library(ggplot2)
Sigma <- matrix(c(1,0.4,0.4,1),2,2)
mu0 <- c(0,0)
mu1 <- c(1,0.8)
v <- mu1 - mu0

# grid
x1 <- seq(-2, 3, length.out=100)
x2 <- seq(-2, 3, length.out=100)
grid <- expand.grid(x1=x1, x2=x2)
dens0 <- mvtnorm::dmvnorm(grid, mu0, Sigma)
dens1 <- mvtnorm::dmvnorm(grid, mu1, Sigma)

grid$dens0 <- dens0
grid$dens1 <- dens1

ggplot(grid, aes(x1, x2)) +
  geom_contour(aes(z=dens0), color="blue", linetype="dashed") +
  geom_contour(aes(z=dens1), color="red") +
  geom_abline(slope=1, intercept=1.5, color="black", lwd=1) +
  geom_segment(aes(x=mu0[1], y=mu0[2], xend=mu1[1], yend=mu1[2]),
               arrow=arrow(length=unit(0.2,"cm")), color="darkgreen") +
  annotate("text", x=1.2, y=0.8, label=expression(v), color="darkgreen") +
  coord_fixed() +
  labs(x=expression(X[1]), y=expression(X[2]),
       title="Convex rejection region and shift in mean direction v")