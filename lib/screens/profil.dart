import 'package:flutter/material.dart';
import 'anasayfa.dart';

class ProfilSayfasi extends StatefulWidget {
  const ProfilSayfasi({super.key});

  @override
  State<ProfilSayfasi> createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            // widgetları iç içe geçirmek için kullanılır.
            children: [
              Container(
                height: 230,
                color: Colors.white,
              ),
              Container(
                height: 180,
                color: Colors.red[100],
              ),
              Positioned(
                left: 20,
                bottom: 0,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(
                        width: 2.0,
                        color: Colors.white), //pp'yi çevreleyen renk
                    color: Colors.blueGrey,
                  ),
                ),
              ),

              //Kullanıcı isim soyisim yazan yer

              Positioned(
                top: 190,
                left: 145,
                bottom: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'İsim Soyisim',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'kullanıcı_adı',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),

              // takip et butonunun olduğu yer

              Positioned(
                top: 130,
                right: 15,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle, size: 18),
                      SizedBox(width: 2),
                      Text('Takip Et'),
                    ],
                  ),
                ),
              ),
              Material(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          //takip ve takipçi sayısının olduğu bölüm

          Container(
            height: 75,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1000',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Takipçi Sayısı',
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '500',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Takip ',
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    )
                  ],
                ),
              ],
            ),
          ),
          GonderiKartiOlustur(),
          GonderiKartiOlustur(),
        ],
      ),
    );
  }
}
