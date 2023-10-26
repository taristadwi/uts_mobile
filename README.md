**#UTS MOBILE**

LINK GITHUB PRAKTIKUM 4:

https://github.com/taristadwi/MobileTaristaSemester5.git

**Praktikum 5: Membangun Navigasi di Flutter**

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Materi ini dapat dimasukkan ke Laporan Praktikum folder Week atau Pertemuan **08.

**Tampilan akhir yang akan Anda buat**

<img width="218" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/2e405245-dc24-4b6e-af3a-61d05efcbb88">

Pada praktikum 5 ini anda akan belajar mengenai pembangunan aplikasi bergerak multi halaman. Aplikasi yang dikembangkan berupa kasus daftar barang belanja. Pada aplikasi ini anda akan belajar untuk berpindah halaman dan mengirimkan data ke halaman lainnya. Gambaran mockup hasil akhir aplikasi dapat anda lihat pada gambar di atas (mockup dibuat sederhana, sehingga Anda mempunyai banyak ruang untuk berkreasi). Desain aplikasi menampilkan sebuah ListView widget yang datanya bersumber dari List. Ketika item ditekan, data akan dikirimkan ke halaman berikutnya.

**Langkah 1: Siapkan project baru**

Sebelum melanjutkan praktikum, buatlah sebuah project baru Flutter dengan nama belanja dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.

<img width="133" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/1b809c14-02c3-4370-a365-5e757c9245fa">

**Langkah 2: Mendefinisikan Route**

Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget. Gambaran potongan kode dapat anda lihat sebagai berikut.

<img width="291" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/9a831b49-4b48-4552-81dc-f05deeb6ec48">

**Langkah 3: Lengkapi Kode di main.dart**

Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.

<img width="253" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/e20e2500-baef-444e-9ac7-50e1a4d2999d">

**Langkah 4: Membuat data model**

Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama item.dart dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.

<img width="340" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/2aa5c3df-37cb-4528-b5a6-002ab97e3a78">

**Langkah 5: Lengkapi kode di class HomePage**

Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut.

<img width="245" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/4b9063be-1c29-4474-973d-68d056d7aa82">

**Langkah 6: Membuat ListView dan itemBuilder**

Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan. Gambaran kode yang dibutuhkan dapat anda lihat sebagai berikut.

<img width="353" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/7b9bdb51-5810-4a2d-a743-cd87d2bfe273">

<img width="338" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/896c4aeb-07a6-4f39-ba27-0824d524c736">

**Langkah 7: Menambahkan aksi pada ListView**


Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell atau GestureDetector. Perbedaan utamanya InkWell merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget InkWell.

Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage. Ilustrasi potongan kode dapat anda lihat pada potongan berikut.

<img width="346" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/fea5f2c9-3fbc-43bc-ac4f-94823cc02d78">

**Tugas Praktikum 2**

1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

<img width="328" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/ecf0ab75-bfee-4338-87e2-4c8704fa7c24">

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)

<img width="395" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/1ace6754-6030-4044-a14e-0b44c0571d0d">

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

<img width="362" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/73507a96-ad7a-4477-90f1-fc077ddb5391">

<img width="204" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/e7ec85a5-9f2f-43d1-b14a-9d701c7fb131">

OUTPUT:

<img width="959" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/bc15f946-78f6-4af6-9f5f-2c9f7e971717">

isi grid view:

<img width="959" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/590d38ff-db7f-4e11-a40c-26b39c4cd898">

4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

<img width="396" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/15f033f9-bad4-4f9b-ad62-2ced70c047a0">

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

<img width="318" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/421c1f9c-d00c-452e-b2d0-5aa802318575">

<img width="380" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/31cf115a-8258-4234-a2f2-46c9957bcca4">

OUPUT:

<img width="960" alt="image" src="https://github.com/taristadwi/uts_mobile/assets/119827471/1be693f3-6121-4410-bf02-734cfe2dd2b6">


6. Selesaikan Praktikum Navigasi dan Rute tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda ke spreadsheet yang telah disediakan!






   
