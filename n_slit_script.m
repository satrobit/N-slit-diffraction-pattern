w = 1.7 %  slit width
s = 8.5 % slit separation
lambda = 0.05 % wavelength
N = 10 % number of slits

P_s = @(x, w, s, N, lambda) ((sin(pi.*w.*x./lambda)).^2)./((pi.*w.*x./lambda).^2).*...
    (sin(N.*pi.*s.*x./lambda).^2)./(sin(pi.*s.*x./lambda).^2)

lims = 0.009;

x = linspace(-lims, lims, 500);

y_s = P_s(x, w, s, N, lambda);


clf;
hold on

plot(x, y_s)
title('N slit diffraction pattern')

hold off
