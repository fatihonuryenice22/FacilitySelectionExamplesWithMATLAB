%% Değişkenlerin Tanımlanması 
nearnessToCustomersA = input('A Tesisinin Müşterilere yakınlık derecesini belirtin');
nearnessToCustomersB = input('B Tesisinin Müşterilere yakınlık derecesini belirtin');
taxAdvantageA = input('A Tesisinin Tax advantage derecesini giriniz');
taxAdvantageB = input('B Tesisinin Tax advantage derecesini giriniz');
EnergyA =input('A Tesisinin enerji derecesini giriniz');
EnergyB =input('B Tesisinin enerji derecesini giriniz');
suKaynaklariA =input('A tesisinin Su kaynakları derecesini giriniz');
suKaynaklariB =input('B tesisinin Su kaynakları derecesini giriniz');
infrastructureA =input('A tesisinin alt yapı kaynakları derecesini giriniz');
infrastructureB =input('B tesisinin alt yapı kaynakları derecesini giriniz');
%% Ratinglerin Hesaplanması
TotalRatingOfA= nearnessToCustomersA*4 + taxAdvantageA*5 + EnergyA*3 + suKaynaklariA*4 + infrastructureA*2 ;
TotalRatingOfB = nearnessToCustomersB*4 + taxAdvantageB*5 + EnergyB*3 + suKaynaklariB*4 + infrastructureB*2 ;
if TotalRatingOfA > TotalRatingOfB
    disp('Yerleşim için A tesisi seçilmeli');
else
    disp('Yerleşim için B tesisi seçilmeli');
end

