import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue,
          ),
          GestureDetector(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30), 
                  padding: EdgeInsets.all(23),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text('Home',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bowlbyOneSC(
                          color: Colors.white,
                          textStyle: TextStyle(fontSize: 30))),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text('Quem Somos',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bowlbyOneSC(
                          color: Colors.white,
                          textStyle: TextStyle(fontSize: 30))),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text('Soluções',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bowlbyOneSC(
                          color: Colors.white,
                          textStyle: TextStyle(fontSize: 30))),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text('Segmentos',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bowlbyOneSC(
                          color: Colors.white,
                          textStyle: TextStyle(fontSize: 30))),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text('Vídeos',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bowlbyOneSC(
                          color: Colors.white,
                          textStyle: TextStyle(fontSize: 30))),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text('Contato',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bowlbyOneSC(
                          color: Colors.white,
                          textStyle: TextStyle(fontSize: 30))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
