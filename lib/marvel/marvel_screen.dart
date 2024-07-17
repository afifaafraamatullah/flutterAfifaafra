import 'package:flutter/material.dart';
import 'detail_marvel_screen.dart';

class MarvelScreen extends StatelessWidget {
 final List<Map<String, dynamic>> marvelData = [
  {
    "nama" : "Marvel",
    "image" : "assets/images/marveuls.jpg",
    "gallery" : [
      "assets/images/antman.jpg",
      "assets/images/gamora.jpg",
      "assets/images/groot.jpg",
      "assets/images/loki.jpg",
      "assets/images/thor.jpg",
      "assets/images/iron.jpg",
      
    ],
    "desc" :
        "Galaksi Spiral merupakan jenis galaksi yang terdiri dari piringan galaksi yang rata dan berputar, yang berisi bintang, medium antarbintang, dan pusat konsentrasi bintang-bintang di bagian tengah galaksi. Tipe ini merupakan satu dari tiga Klasifikasi morfologi galaksi yang utama yang digambarkan oleh Edwin Hubble pada karyanya tahun 1936 The Realm of the Nebulae, bersama dengan galaksi elips dan galaksi lentikular." 
  },
  {
    "nama" : "Galaksi Elips",
    "image" : "assets/images/marveuls.jpg",
    "gallery" : [
       "assets/images/antman.jpg",
      "assets/images/gamora.jpg",
      "assets/images/groot.jpg",
      "assets/images/loki.jpg",
      "assets/images/thor.jpg",
      "assets/images/iron.jpg",
    ],
    "desc" :
        "Galaksi Elips merupakan tipe galaksi yang memiliki bentuk dasar elipsoid serta memiliki kecerahan yang halus. Tipe ini merupakan satu dari tiga Klasifikasi morfologi galaksi yang utama yang digambarkan oleh Edwin Hubble pada karyanya tahun 1936 The Realm of the Nebulae, bersama dengan galaksi spiral dan galaksi lentikular. Galaksi-galaksi tersebut memiliki kisaran bentuk dari mendekati bulat sampai berbentuk sangat datar, dan dari segi ukuran mulai dari berisi puluhan juta sampai lebih dari satu trilliun bintang. Pada awalnya Edwin Hubble berpikir bahwa galaksi eliptis dapat berkembang menjadi galaksi spiral, tetapi akhirnya dugaan ini ternyata keliru. Bintang-bintang yang ada di dalam galaksi eliptis memiliki usia jauh lebih tua dibanding bintang-bintang yang ada di dalam galaksi spiral."
  }, 
  {
    "nama" : "Galaksi Lentikular",
    "image" : "assets/images/marveuls.jpg",
    "gallery" : [
      "assets/images/antman.jpg",
      "assets/images/gamora.jpg",
      "assets/images/groot.jpg",
      "assets/images/loki.jpg",
      "assets/images/thor.jpg",
      "assets/images/iron.jpg",
    ],
    "desc" :
        "Galaksi Lentikular adalah tipe galaksi yang berada di antara galaksi eliptis dan galaksi spiral menurut Klasifikasi morfologi galaksi. Galaksi lentikular merupakan galaksi cakram (seperti galaksi spiral) yang telah menghabiskan atau kehilangan materi antarbintang mereka, sehingga galaksi tipe ini memiliki tingkat pembentukan bintang yang sangat rendah."
  }, 
  {
    "nama" : "Galaksi Tidak Beraturan",
    "image" : "assets/images/marveuls.jpg",
    "gallery" : [
      "assets/images/antman.jpg",
      "assets/images/gamora.jpg",
      "assets/images/groot.jpg",
      "assets/images/loki.jpg",
      "assets/images/thor.jpg",
      "assets/images/iron.jpg",
    ],
    "desc" :
        "Galaksi Tidak Beraturan merupakan sebuah galaksi yang tidak memiliki bentuk beraturan, tidak menyerupai galaksi spiral maupun galaksi eliptis. Bentuk dari galaksi tak beraturan tidaklah umum galaksi tersebut tidak masuk dalam salah satu kelas yang umum pada sistem klasifikasi Hubble, dan penampilannya kacau, tanpa memiliki tonjolan galaksi maupun struktur lengan spiral. Secara keseluruhan, seperempat dari galaksi yang ada memiliki bentuk tak beraturan. Kebanyakan galaksi tak beraturan sebelumnya merupakan galaksi spiral ataupun eliptis namun bentuknya berubah tak beraturan karena tarikan gravitasi." 
  }, 
];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Macam-macam marvel'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/iron.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: marvelData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailMarvelScreen( 
                        nama: marvelData[index]["nama"],
                        image: marvelData[index]["image"],
                        gallery: marvelData[index]["gallery"],
                        desc: marvelData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${marvelData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${marvelData[index]["nama"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}