% Sabit hacimler
hacim = [80; 100; 120; 130; 100; 150; 90];

% Alınacak veri sayısını 7 ye sabitler yukarıda 7 tane hacim olduğu için
% eğer veri sayısını arttırmak istersek ekstra hacim ekleyebiliriz.
n = length(hacim);

% Boş dizi
koordinat_x = zeros(n, 1);
koordinat_y = zeros(n, 1);

% Koordinat 
figure;
hold on; 
grid on; 
xlabel('X Koordinatı'); % X ekseni etiketi
ylabel('Y Koordinatı'); % Y ekseni etiketi
title('Girilen Konumlar ve Ağırlık Merkezi');

% X ve Y koordinatlarını toplamak 
for i = 1:n
    fprintf('Konum %d için verileri girin:\n', i);
    koordinat_x(i) = input('X koordinatını girin: ');
    koordinat_y(i) = input('Y koordinatını girin: ');
    
    % Her girilen noktayı mavi nokta ile işaretle
    plot(koordinat_x(i), koordinat_y(i), 'bo', 'MarkerFaceColor', 'b'); 
    text(koordinat_x(i), koordinat_y(i), sprintf(' Konum %d', i), ...
         'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
end

% Volumetrik ağırlıklı koordinatları hesapla
Vx = hacim .* koordinat_x;
Vy = hacim .* koordinat_y;

% Toplam hacimi hesapla
toplam_hacim = sum(hacim);

% Merkez noktasını hesapla
Xc = sum(Vx) / toplam_hacim;
Yc = sum(Vy) / toplam_hacim;

% Ağırlık merkezini kırmızı yıldız ile işaretle
plot(Xc, Yc, 'r*', 'MarkerSize', 10); % 'r*' kırmızı yıldız ağırlık merkezi için
text(Xc, Yc, ' Ağırlık Merkezi', ...
     'VerticalAlignment', 'top', 'HorizontalAlignment', 'left');

% Grafik eksenlerini sabitle
axis([min(koordinat_x)-1, max(koordinat_x)+1, min(koordinat_y)-1, max(koordinat_y)+1]);

% Grafik çizimini kapat
hold off;


% Sonuçları cmdye yazdır
fprintf('\nX merkezi: %.2f\n', Xc);
fprintf('Y merkezi: %.2f\n', Yc);
