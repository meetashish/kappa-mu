function f = kappamuInverseGammaDistribution(x, mu, kappa, ms, Omega)



% Theoretical PDF
f = zeros(length(x),1);
for k = 1:length(x)
    fac1 = exp(-mu*kappa)*2*(mu^mu)*((kappa + 1)^mu)*((ms - 1)^ms)*(Omega^ms)*(x(k)^(2*mu - 1));

    fac2 = beta(ms, mu)*(mu*(kappa + 1)*x(k)*x(k) + (ms - 1)* Omega)^(ms + mu);

    arg = mu*mu*kappa*(kappa + 1)*x(k)^2;
    arg2 = mu*(kappa + 1)*x(k)^2 + (ms - 1)*Omega;

    one_F_one = Kummer(ms + mu, mu, arg/arg2);

    f(k) = (fac1/fac2)*one_F_one;
end
