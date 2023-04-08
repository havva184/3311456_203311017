import 'package:flutter/material.dart';

class KesfetSayfasi extends StatefulWidget {
  const KesfetSayfasi({super.key});

  @override
  State<KesfetSayfasi> createState() => _KesfetSayfasiState();
}

class _KesfetSayfasiState extends State<KesfetSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarOlustur(),
    );
  }
}

AppBar _appBarOlustur() {
  return AppBar(
    titleSpacing: 0.0,
    backgroundColor: Colors.grey[100],
    title: TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.clear),
        border: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
        hintText: 'Kullanıcı Ara...',
      ),
    ),
  );
}
