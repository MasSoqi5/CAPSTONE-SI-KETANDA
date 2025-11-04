# CAPSTONE SBD & PBO SI-KETANDA

<img width="1125" height="482" alt="image" src="https://github.com/user-attachments/assets/81f85afd-e007-42d4-9c19-3a106ea1c6c3" />


## Identitas Program 🪶
*SI-KETANDA (Sistem Informasi ketahanan pangan daerah terpencil)*🌱🌿

Sebuah sistem informasi berbasis digital yang dirancang untuk mendukung ketahanan pangan di beberapa wilayah dengan cara menghubungkan petani, distributor, pemerintah, dan customer dalam satu platform terpadu. Sistem ini mencakup pendataan hasil panen, distribusi pangan, pelaporan keluhan, serta fitur akses pasar sederhana antar pengguna.

-----

## Deskripsi Singkat Program🍃

SI-KETANDA merupakan Aplikasi yang dirancang untuk membantu aktivitas petani dalam pencatatan panen, memberikan keluhan kepada admin yang akan disalurkan kepada pemerintah. Juga membantu pencatatan distribusi pangan oleh distributor menuju pasar yang akan dibeli oleh customers. Sistem ini mengintegrasikan data pengguna petani, pemerintah, distributor, dan konsumen dalam satu kesatuan basis data yang terstruktur ke dalam satu basis data terpusat menggunakan *MYSQL (XAMPP)*. Aplikasi ini juga dibangun dengan bahasa *Java (NETBEANS IDE)* agar mudah dikembangkan serta efisien.

Terdapat 5 pengguna utama dalam aplikasi ini yaitu :

Pemerintah : dimana mereka dapat memantau distribusi pangan dan data panen serta membuat laporan ketahanan pangen daerah.

Admin : dapat melakukan pengelolaan akun user serta membuat laporan ketahanan pangan daerah yang akan ditindaklanjuti oleh pemerintah

Petani : selain registrasi. Para petani juga akan bisa menambahkan data hasil panen kedalam sistem, melihat status distribusi dari distributor, serta menyampaikan laporan keluhan panen kepada Admin

Distributor : setelah mengisi registrasi. Distributor dapat melakukan pengelolaan data distribusi serta mengubah harga & Stok saat dipasarkan.

Customers : Setelah melakukan registrasi, Customers dapat melihat daftar komoditas pangan yang ada untuk juga bisa melakukan pembelian komoditas.

-----

## Fitur Program 🥬

Didalam Platform kami memiliki keunggulan berupa

🧩 *1. Fitur Umum*

### 🔐 *Login & Logout*

* Setiap pengguna (Pemerintah, Admin, Petani, Distributor, Customer) harus melakukan *login* terlebih dahulu dengan username dan password.
* Sistem memverifikasi data user pada database dan menentukan *role* pengguna.
* Setelah selesai menggunakan sistem, user dapat melakukan *logout* untuk keluar dari akun.

### 📝 *Registrasi*

* User baru dapat melakukan *registrasi* dengan mengisi username, password, dan peran (role) yang sesuai.
* Sistem akan memeriksa apakah username sudah digunakan.
* Jika belum, sistem menyimpan data user baru ke dalam database dan menampilkan pesan *“Registrasi berhasil, silakan login kembali.”*

---

🏛️ *2. Fitur Pemerintah*

### 📊 *Melihat Data Wilayah*

* Pemerintah dapat melihat *data wilayah dan stok pangan* yang tersedia.
* Data ini ditampilkan berdasarkan hasil input dari petani dan distributor.

### 📈 *Analisis Laporan Panen*

* Sistem membaca data wilayah & stok pangan.
* Pemerintah dapat mengetahui wilayah yang mengalami *kekurangan stok* dan merencanakan *distribusi pangan* ke wilayah tersebut.

### 🧾 *Mencetak Laporan*

* Pemerintah dapat mencetak hasil laporan panen yang telah direkap oleh sistem.

### 🌾 *Kelola Data Komoditas*

* Pemerintah dapat menambah dan mengubah data jenis komoditas pangan untuk mengatur jenis barang yang diproduksi, didistribusikan, dan dijual dalam sistem.

---

 ⚙️ *3. Fitur Admin*

### 👥 *Kelola Data User*

* Admin dapat menambah, mengubah, dan menghapus akun pengguna (petani, distributor, customer, dll).
* Semua perubahan akan disimpan ke dalam database.

### 🌿 *Kelola Data Komoditas*

* Admin dapat mengelola daftar komoditas (jenis hasil panen atau bahan pangan) dengan menambahkan, mengubah, atau menghapus data tersebut.

### 🗺️ *Kelola Wilayah*

* Admin dapat menambah dan mengubah data wilayah yang menjadi area distribusi pangan.

### 📋 *Melihat Laporan*

* Admin dapat mengambil data laporan dari database untuk ditampilkan atau digunakan sebagai bahan evaluasi.

---

👨‍🌾 *4. Fitur Petani*

### 🌱 *Input Data Panen*

* Petani dapat mengisi data hasil panen meliputi:

  * Nama komoditas
  * Jumlah komoditas
  * Harga komoditas
  * Tanggal panen
* Sistem memeriksa kelengkapan data sebelum menyimpannya.

### 📄 *Lihat Status Panen*

* Petani dapat melihat *status panen* (misalnya apakah sudah diambil oleh distributor, masih tersimpan, atau sudah dijual).

### 📬 *Kirim Keluhan*

* Petani dapat mengirim *keluhan* ke admin jika ada masalah dengan data panen, distribusi, atau harga.
* Sistem akan menyimpan keluhan dan menampilkan pesan konfirmasi penerimaan.

---

 🚛 *5. Fitur Distributor*

### 📦 *Lihat Stok Panen*

* Distributor dapat melihat data stok hasil panen yang tersedia dari database.

### ➕ *Tambah Distribusi*

* Distributor dapat menambah data distribusi dengan menginput:

  * Wilayah tujuan
  * Jumlah distribusi
  * Tanggal distribusi

### 🧾 *Lihat Riwayat Distribusi*

* Distributor dapat menampilkan data distribusi yang sudah dilakukan sebelumnya dari database.

---

🛒 *6. Fitur Customer*

### 🧺 *Lihat Komoditas*

* Customer dapat melihat daftar komoditas dan stok yang tersedia dari distributor.

### 💰 *Beli Komoditas*

* Customer dapat memilih item dan jumlah yang ingin dibeli.
* Sistem memeriksa apakah stok mencukupi.

  * Jika stok cukup → transaksi disimpan ke database.
  * Jika stok tidak cukup → kembali ke menu customer.

### 📜 *Lihat Riwayat Transaksi*

* Customer dapat melihat daftar pembelian sebelumnya yang tersimpan di sistem.

---

 🔁 *7. Interaksi Antarpengguna*

* *Petani* menginput hasil panen → *Distributor* mengambil data stok untuk didistribusikan → *Pemerintah* memantau dan menganalisis distribusi serta stok wilayah.
* *Customer* melakukan pembelian terhadap komoditas yang tersedia dari hasil distribusi.

---

## 📘 *Kesimpulan*

Sistem ini memiliki fitur utama:

| Aktor           | Fitur Utama                                                        |
| --------------- | ------------------------------------------------------------------ |
| *Admin*       | Kelola user, wilayah, komoditas, lihat laporan                     |
| *Pemerintah*  | Lihat data wilayah, analisis stok, cetak laporan, kelola komoditas |
| *Petani*      | Input panen, lihat status, kirim keluhan                           |
| *Distributor* | Lihat stok, tambah distribusi, lihat riwayat                       |
| *Customer*    | Lihat komoditas, beli produk, lihat transaksi                      |
| *Semua User*  | Registrasi, login, logout                                          |


-----

## Penerapan 5 pillar OOP🐚

- Encapsolution

*Encapsulation*, berarti membungkus data dan fungsi dalam satu kesatuan (class) untuk menjaga keamanan dan mengontrol akses. Atribut dibuat private dengan getter & setter untuk mengontrol akses data. Penerapan tersebut banyak di sebagain besar view.

<img width="669" height="251" alt="image" src="https://github.com/user-attachments/assets/9705c7b8-927b-4ae4-a5e2-b688bd3c0aa2" />


- Abstraction

*Abstraction*, yaitu menyembunyikan detail kompleks dari pengguna dan hanya menampilkan fitur penting agar sistem lebih mudah dipahami. Kelas ini menyediakan kerangka dasar (method showInfo() abstrak) tanpa implementasi.

<img width="247" height="46" alt="image" src="https://github.com/user-attachments/assets/6ebdf2a0-ee19-4456-a6a2-f52a04323cc9" />


- Inheritance

*Inheritance*, memungkinkan suatu class mewarisi atribut dan metode dari class lain sehingga kode lebih efisien dan terstruktur. Misalnya, class User berperan sebagai class induk yang menyimpan atribut umum seperti id, username, password, dan role. Kemudian, class AdminPanel dan UserPanel dijadikan subclass yang mewarisi BasePanel.

<img width="288" height="17" alt="image" src="https://github.com/user-attachments/assets/3ed39253-e848-4080-943c-30b8998af2d6" />


- Polymorphism

*Polymorphism*, memberi kemampuan objek untuk memiliki banyak bentuk atau perilaku berbeda tergantung konteks penggunaannya. Metode yang sama (create, read, dll) dapat diimplementasikan dengan perilaku berbeda di class lain. Misalnya di kelas Interface

<img width="535" height="69" alt="image" src="https://github.com/user-attachments/assets/83d882bc-76d6-4317-b49f-be7b0da32334" />


- Interface

*Interface*, berperan sebagai kontrak yang menentukan metode apa saja yang harus diimplementasikan oleh class tanpa menentukan cara implementasinya. Di program ini, class interface bernama KoneksiDatabase diimplementasikan di method Controller.

<img width="706" height="486" alt="image" src="https://github.com/user-attachments/assets/10f45797-3238-4d9a-ac83-67a7cff75573" />



-----

## Struktur Folder/Package/MVC 🌴

<img width="566" height="902" alt="image" src="https://github.com/user-attachments/assets/991f0a06-c411-4b19-9952-f8ced36ae765" />

### Controller
Disini ada class yang fungsinya untuk memainkan serta menjembatani dari PHPMyadmin ke Netbeans agar terhubung dan bekerja secara baik

- ControllerDatabase
- KoneksiDatabase
- TestDatabase

### Model
Disinilah Logika dari jalannya platform kami bergulir yang dimana sesuai Erdish maka kami juga memiliki Kelas berupa

- Admin
- Customer
- Distribusi
- Distributor
- Panen
- Pemerintah
- Petani
- Transaksi
- User

### View 
Disinilah GUI dari Platform dijalankan dan juga sebagai interface nyata dan juga kelas yang ada juga untuk GUI pertama yang pemakai lihat

- LoginForm
- RegistrasiForm
- WelcomeForm

### View Distributor
Disinilah GUi dari apa yang ditampilkan khusus distributor kelasnya antara lain

- DBDistributorLihatStokPanen
- DBDistributorRiwayatDistribusi
- DBDistributorTambahDistribusi
- DashboardDistributor

### View Pemerintah
Disinilah GUi dari apa yang ditampilkan khusus pemerintah kelasnya antara lain

- DBPemerintahCetakLaporan
- DBPemerintahDataKomoditas
- DBPemerintahDataWilayah
- dashboardPemerintah

### View Admin
Disinilah GUi dari apa yang ditampilkan khusus Admin kelasnya antara lain

- DBAdminKelolaKomoditas
- DBAdminKelolaLaporan
- DBAdminKelolaUser
- DBAdminKelolaWilayah
- DashboardAdmin

### View Customer
Disinilah GUi dari apa yang ditampilkan khusus cuistomers kelasnya antara lain

- DBCustomerLihatKomoditas
- DBCustomerLihatRiwayatTransaksi
- DashaboardCustomer

### View Petani
Disinilah GUi dari apa yang ditampilkan khusus petani kelasnya antara lain

- DBKeluhan
- DBPetaniDataPanen
- DashboardPetani

-----

## Library atau Framework yang digunakan 🌾

<img width="515" height="156" alt="image" src="https://github.com/user-attachments/assets/8010e380-83d2-4162-b844-e0e4f008d57c" />

Disini Library yang kami Gunakan adalah Jar serta Absolute Konektor untuk secara jelas menghubungkan antara Netbeans menuju PHPMyAdmin yang dikelola didalam XAMPP


-----

## Cara Menggunakan Program 🌳

### Langkah Pertama

### Langkah Kedua

### Langkah Ketiga

-----

## Tampilan GUI 🍀

### Login form

### Registrasi Form

### Welcome form

### Dashboard Petani

### Dashboard Distributor

### Dashboard Admin

### Dashboard Pemerintah

### Dashboard Customers

-----

## Dokumentasi dan Diagram pendukung 🍁

ERD LOGICAL :

<img width="1216" height="853" alt="image" src="https://github.com/user-attachments/assets/ec37844f-9bcf-45fc-b6a6-a99a332adf74" />

ERD RELATIONAL :

<img width="1194" height="859" alt="image" src="https://github.com/user-attachments/assets/6edf52f6-4ee2-48d9-a3fc-31a5af9ea344" />

Use case & Flowchart diagram:

https://drive.google.com/file/d/1AhZu0evldbN10q3MWEtux8scaX6nG795/view 

Laporan SBD :


<img width="605" height="803" alt="image" src="https://github.com/user-attachments/assets/616d3ac5-c81a-4419-b13a-c046e3411be0" />

Slide deck kami :

https://www.canva.com/design/DAG3tjEqiN0/9JfKAXgpH-LgOUd1RLOogA/edit?utm_content=DAG3tjEqiN0&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton 

-----

## Tim Pengembang

| Nama | Peran | Tanggung Jawab |
| --- | --- | --- |
| Nurhidayah | Ketua | memimpin tim serta merancang konsepan program |
| Syauqi Etna L | Github | Mendokumentasikan lewat README github |
| M. Romadhoni Alfatih | Database | memastikan Database dan merancang Flowchart |
| Maria Claudia Meo | UI/UX | merancang Slide dan membantu proses pengembangan program |
