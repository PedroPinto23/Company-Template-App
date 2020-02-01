import 'package:flutter/material.dart';
import 'package:pasquali_app/src/pages/DrawerPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/Contatos.dart';
import 'pages/Home.dart';
import 'pages/Informations.dart';
import 'pages/Segmentos.dart';
import 'pages/Videos.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomIndex = 0;
  List<BottomNavigationBarItem> navBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.grey),
        title: Text('inicio'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.info_outline,
          color: Colors.grey,
        ),
        title: Text('Como Funciona'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.trending_up, color: Colors.grey),
        title: Text('Segmentos'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.ondemand_video, color: Colors.grey),
        title: Text('videos'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.mail, color: Colors.grey),
        title: Text('contato'),
      ),
    ];
  }

  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  Widget buildPage() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Home(),
        Contatos(),
        Informations(),
        Segmentos(),
        Videos()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void bottomTapped(int index) {
    setState(() {
      bottomIndex = index;

      pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  void pageChanged(int index) {
    setState(() {
      bottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://www.stickpng.com/assets/images/5842a770a6515b1e0ad75afe.png',
          height: 80,
          width: 180,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      endDrawer: DrawerPage(),
      body: buildPage(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: bottomIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          items: navBarItems()),
    );
  }
}
