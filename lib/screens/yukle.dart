import 'package:flutter/material.dart';

class YukleSayfasi extends StatefulWidget {
  const YukleSayfasi({super.key});

  @override
  State<YukleSayfasi> createState() => _YukleSayfasiState();
}

class _YukleSayfasiState extends State<YukleSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.upload,
            size: 70,
          ),
        ],
      ),
    );
  }
}
