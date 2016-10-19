function L = Logaritmik(G)
    Gr = imread(G); %Membaca file citra
    r  = Gr(:,:,1); %Mengambil matriks penyusun citra merah
    g  = Gr(:,:,2); %-------------------------------- hijau
    b  = Gr(:,:,3); %-------------------------------- biru
    greyscale = (0.3*r)+(0.5*g)+(0.2*b); %Mengubah citra menjadi keabuan, mengambil nilai rata" rgb
    
    L1 = 0.1*log(double(greyscale)+1); %Mengubah citra keabuan menjadi citra transformasi logaritmik dengan c=0.1
    L2 = 0.5*log(double(greyscale)+1); %Mengubah citra keabuan menjadi citra transformasi logaritmik dengan c=0.5
    L3 = 0.3*log(double(greyscale)+1); %Mengubah citra keabuan menjadi citra transformasi logaritmik dengan c=0.3
    
    subplot(3,2,1), imshow(L1), title('Transformasi Logaritmik c=0.1'); %Menampilkan gambar citra logaritmik
    subplot(3,2,2), imhist(L1), title('        Histogram c=0.1'); %Menampilkan histogram logaritmik c=0.1
    subplot(3,2,3), imshow(L2), title('Transformasi Logaritmik c=0.5'); %Menampilkan gambar citra logaritmik
    subplot(3,2,4), imhist(L2), title('        Histogram c=0.5'); %Menampilkan histogram logaritmik c=0.5
    subplot(3,2,5), imshow(L3), title('Transformasi Logaritmik c=0.3'); %Menampilkan gambar citra logaritmik
    subplot(3,2,6), imhist(L3), title('        Histogram c=0.3'); %Menampilkan histogram logaritmik c=0.3
end