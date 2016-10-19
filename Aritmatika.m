function arit = Aritmatika(G,x)
    Ar = imread(G); %Membaca file citra
    r  = Ar(:,:,1); %Mengambil matriks penyusun citra merah
    g  = Ar(:,:,2); %-------------------------------- hijau
    b  = Ar(:,:,3); %-------------------------------- biru
    greyscale = (0.3*r)+(0.5*g)+(0.2*b); %Mengubah citra, mengambil nilai rata" rgb
    
    tambah = greyscale+x; %operasi aritmatika penambahan
    kurang = greyscale-x; %------------------ pengurangan

    subplot(2,2,1), imshow(tambah), title('Penambahan'); %Menampilkan hasil gambar tambah
    subplot(2,2,2), imhist(tambah), title('           Histogram Penambahan'); %Menampilkan histogram tambah
    subplot(2,2,3), imshow(kurang), title('Pengurangan'); %Menampilkan hasil gambar kurang
    subplot(2,2,4), imhist(kurang), title('           Histogram Pengurangan'); %Menampilkan histogram kurang
end
