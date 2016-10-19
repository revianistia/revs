function gr = Greyscale(G)
    Gr = imread(G); %Membaca file citra
    r  = Gr(:,:,1); %Mengambil matriks penyusun citra merah
    g  = Gr(:,:,2); %-------------------------------- hijau
    b  = Gr(:,:,3); %-------------------------------- biru
    greyscale = (0.3*r)+(0.5*g)+(0.2*b); %Mengubah citra menjadi keabuan, mengambil nilai rata" rgb
    %subplot(1,2,1), imshow(Gr), title('Citra Asli'); %Menampilkan gambar citra asli
    subplot(1,1,1), imshow(greyscale), title('Citra Keabuan'); %Menampilkan gambar citra keabuan
end