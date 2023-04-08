import 'package:flutter/material.dart';

class KonumSayfasi extends StatefulWidget {
  const KonumSayfasi({super.key});

  @override
  State<KonumSayfasi> createState() => _KonumSayfasiState();
}

class _KonumSayfasiState extends State<KonumSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          KonumWidgeti(konumBilgisi: Text('konum 1')),
          KonumWidgeti(konumBilgisi: Text('konum 2')),
          KonumWidgeti(konumBilgisi: Text('konum 3')),
          KonumWidgeti(konumBilgisi: Text('konum 4')),
          KonumWidgeti(konumBilgisi: Text('konum 5')),
        ],
      ),
    );
  }
}

class KonumWidgeti extends StatelessWidget {
  final Text konumBilgisi;
  KonumWidgeti({required this.konumBilgisi});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.grey[350],
          ),
          child: konumBilgisi,
          height: 100,
        ),
      ),
    );
  }
}
