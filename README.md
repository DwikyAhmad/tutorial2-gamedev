# Tutorial 2 - Dwiky Ahmad Megananta 2206829206

## Latihan: Playtest

### Apa saja pesan log yang dicetak pada panel Output?

Saat awal game dimulai dicetak `Platform initialized` lalu ketika pesawat menyentuh batas atas area permainan window, panel output mencetak `Reached Objective!`

### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

log akan mencetak kembali `Reached Objective!`

### Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

Ya, karena scene ObjectiveArea berada di batas atas area permainan, maka ketika pesawat berada di area tersebut maka panel ouput akan mencetak pesan `Reached Objective!`

## Latihan: Memanipulasi Node dan Scene

### Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?

Node sprite berfungsi memberikan texture/gambar, kita dapat melakukan load sebuah assets sehingga objek yang telah kita bentuk bisa memiliki visual grafis.

### Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

RigidBody2D mempunyai fungsi simulasi physics seperti gravity, forces, coliisions, dan torque yang dimana ini bagus dipakai untuk objek yang perlu bergerak dan berinteraksi dengan objek lain, sedangkan untuk StaticBody2D digunakan untuk objek yang static/immobile yang dimana objek tersebut tidak terpengaruh oleh simulasi fisika, cocok digunakan sebagai tembok, platform, dll.

### Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Tidak ada yang terjadi, hal ini karena massa suatu objek dalam fisika tidak mempengaruhi kecepatan jatuh suatu objek oleh gaya gravitasi, hal ini menunjukkan simulasi fisika yang benar seperti dunia nyata.

### Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Pesawat tersebut jatuh melewati platform, hal ini karena StonePlatform di lakukan disabled sehingga perilaku objek tersebut tidak berlaku.

### Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

Mengubah posisi akan mengubah posisi BlueShip berdasarkan parent node yaitu MainLevel, Rotation akan melakukan rotasi pada objek BlueShip dan Scale akan melakukan scaling kali x berdasarkan pixel width dan height yang dimiliki oleh atribute node BlueShip

### Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

Karena atribut position Node akan berdasarkan Node parent mereka, yang dimana node stonePlatform dan stonePlatform2 memiliki posisi berdasarkan posisi parent yaitu Node PlatformBlue