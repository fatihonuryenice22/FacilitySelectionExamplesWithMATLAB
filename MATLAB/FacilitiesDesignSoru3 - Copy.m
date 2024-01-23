% Verileri tanımlayın
talepler = [500; 4000; 700];
depo_maliyetleri = [100; 150; 200];
kapasiteler = [600; 400; 800];

% Lineer Programlama Modelini Oluşturun
f = depo_maliyetleri;
Aeq = ones(1, length(depo_maliyetleri));
beq = sum(talepler);
lb = zeros(size(depo_maliyetleri));
ub = kapasiteler;

% Lineer Programlama Çözümü
[x, fval] = linprog(f, [], [], Aeq, beq, lb, ub);

% Sonuçları yazdırma
disp('Depo Yerleşimi:');
disp(x);
disp('Toplam Maliyet:');
disp(fval);
