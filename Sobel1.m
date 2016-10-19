function s = Sobel(G)
    S = imread(G); %Membaca file citra
    r  = S(:,:,1); %Mengambil matriks penyusun citra merah
    g  = S(:,:,2); %-------------------------------- hijau
    b  = S(:,:,3); %-------------------------------- biru
    greyscale = (0.3*r)+(0.5*g)+(0.2*b); %Mengubah citra, mengambil nilai rata" rgb
    
    %------------TAMBAH------------
    tambah = greyscale+80; %operasi aritmatika penambahan
    subplot(2,2,1), imshow(tambah), title('Penambahan'); %Menampilkan hasil gambar tambah
    tambah = double(tambah); %convert nilai tambah ke double 
    tinggi = size(tambah, 1); %mengambil size citra
    lebar = size(tambah, 2); %mengambil size citra
    rgb = size(tambah, 3); %mengambil size citra
    showTambah = zeros(size(tambah)); %operasi menampilkan citra tambah
    
    %fungsi operator sobel tambah
    gx = [1 2 1; 0 0 0; -1 -2 -1]; 
    gy = [1 0 -1; 2 0 -2; 1 0 -1];
    for i = 2 : tinggi - 1 
       for j = 2 : lebar - 1
           for k = 1 : rgb
               temp_tambah = tambah(i - 1 : i + 1, j - 1 : j + 1, k);
               x = sum(sum(gx .* temp_tambah)); 
               y = sum(sum(gy .* temp_tambah));
               g = sqrt(x^2 + y^2);
               showTambah(i, j, k) = g;
            end
        end
    end

    showTambah = uint8(showTambah); %untuk mengubah double ke int
    subplot(2,2,2), imshow(showTambah), title('Operator Sobel'); %Menampilkan hasil operator sobel
    
    %------------KURANG------------
    kurang = greyscale-80; %operasi aritmatika pengurangan
    subplot(2,2,3), imshow(kurang), title('Pengurangan'); %Menampilkan hasil gambar kurang
    kurang = double(kurang); %convert nilai kurang ke double 
    tinggi = size(kurang, 1); %mengambil size citra
    lebar = size(kurang, 2); %mengambil size citra
    rgb = size(kurang, 3); %mengambil size citra
    showkurang = zeros(size(kurang)); %operasi menampilkan citra kurang
    
    %fungsi operator sobel kurang
    gx = [1 2 1; 0 0 0; -1 -2 -1]; 
    gy = [1 0 -1; 2 0 -2; 1 0 -1];
    for i = 2 : tinggi - 1 
       for j = 2 : lebar - 1
           for k = 1 : rgb
               temp_kurang = kurang(i - 1 : i + 1, j - 1 : j + 1, k);
               x = sum(sum(gx .* temp_kurang)); 
               y = sum(sum(gy .* temp_kurang));
               g = sqrt(x^2 + y^2);
               showkurang(i, j, k) = g;
            end
        end
    end

    showkurang = uint8(showkurang); %untuk mengubah double ke int
    subplot(2,2,4), imshow(showkurang), title('Operator Sobel'); %Menampilkan hasil operator sobel
