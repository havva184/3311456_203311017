import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:modaacik/screens/profil.dart';
import 'package:modaacik/screens/yukle.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modaacik/screens/konum.dart';
import 'package:modaacik/screens/kesfet.dart';
import 'package:modaacik/screens/anasayfa.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  static const TextStyle optionstyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List<Widget> _widgetoptions = <Widget>[
    MaterialApp(
      home: KonumSayfasi(),
    ),
    MaterialApp(
      home: KesfetSayfasi(),
    ),
    MaterialApp(
      home: Anasayfasi(),
    ),
    MaterialApp(
      home: YukleSayfasi(),
    ),
    MaterialApp(
      home: ProfilSayfasi(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 207, 49, 38),
          title: Text(
            'MODA AÇIK',
            style:
                GoogleFonts.libreBaskerville(color: Colors.black, fontSize: 30),
          ),
        ),
        body: Center(
          child: _widgetoptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                // neden ünlem konulduğuna bak ve bu nativebarın özelliklerine
                activeColor: Color.fromARGB(255, 207, 49, 38),
                iconSize: 16,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: LineIcons.flag,
                    text: ' Konum',
                  ),
                  GButton(
                    icon: LineIcons.search,
                    text: ' Keşfet',
                  ),
                  GButton(
                    icon: LineIcons.home,
                    text: ' Anasayfa',
                  ),
                  GButton(
                    icon: LineIcons.upload,
                    text: ' Gönderi Ekle',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: ' Profil',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
