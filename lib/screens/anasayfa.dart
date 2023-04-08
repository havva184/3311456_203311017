import 'package:flutter/material.dart';
import 'package:modaacik/screens/profil.dart';

class Anasayfasi extends StatefulWidget {
  const Anasayfasi({super.key});

  @override
  State<Anasayfasi> createState() => _AnasayfasiState();
}

class _AnasayfasiState extends State<Anasayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GonderiKartiOlustur(),
          GonderiKartiOlustur(),
          GonderiKartiOlustur(),
          GonderiKartiOlustur(),
        ],
      ),
    );
  }
}

class GonderiKartiOlustur extends StatefulWidget {
  const GonderiKartiOlustur({
    super.key,
  });

  @override
  State<GonderiKartiOlustur> createState() => _GonderiKartiOlusturState();
}

class _GonderiKartiOlusturState extends State<GonderiKartiOlustur> {
  @override
  Widget build(BuildContext context) {
    return Material(
      //kartın gölgeli gibi öne çıkması için ekledim.
      elevation: 1.0,
      borderRadius: BorderRadius.circular(12.0),

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity, //yatayda geniş yer kaplaması için
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // 3 tane rowun parçası var. Bunların arasını ayırmak için ekledim.
                // 3'de birbirinden çok ayrı oldu. Profil fotğrafı ve kullanıcı adını daha yakın yapmak
                // istediğim için container ve columu row içine aldım.
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProfilSayfasi(),
                                ));
                          },
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                        width: 12.0,
                      ),
                      Column(
                        // Kullanıcı adı ve saatin olacağı kısım.
                        // yazıların sola yaslı şekilde olması için ekledim.
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'İsim Soyad',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            '17.23',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // menüler sekmesini açacak olan icon  kısmı
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Gönderi Açıklaması',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Image.asset(
                  'lib/images/resim1.jpg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 4.0),

              // beğeni tuşu bölümü
              Row(
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: Colors.grey[100]),
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                    label: Text(
                      'Beğen',
                      style: TextStyle(color: Colors.black38),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
 /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProfilSayfasi(),
                                )); */