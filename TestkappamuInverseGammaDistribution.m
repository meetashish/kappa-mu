clear;

x = linspace(0,4,1e5);

kappa = [5.4, 3.5, 0, 0];
mu = [1, 0.9, 1.5, 1];
ms = 100;
Omega = 2.1;
% kappamuInverseGammaDistribution(x, mu, kappa, ms, Omega)
for k = 1:4
    f = kappamuInverseGammaDistribution(x, mu(k), kappa(k), ms, Omega);
    plot(x,f);hold on;
end
xlabel('$r$', 'Interpreter','latex', 'FontSize', 12);
ylabel('$f_{R}(r)$', 'Interpreter','latex', 'FontSize', 12);
hold off;

str1 = '$\kappa = 5.4, \mu = 1, m_s = 100, \Omega = 2.1$';
str2 = '$\kappa = 3.5, \mu = 0.9, m_s = 100, \Omega = 2.1$';
str3 = '$\kappa = 0, \mu = 1.5, m_s = 100, \Omega = 2.1$';
str4 = '$\kappa = 0, \mu = 1, m_s = 100, \Omega = 2.1$';

legend(str1, str2, str3, str4, 'interpreter', 'latex','FontSize', 12);