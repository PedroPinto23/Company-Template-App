import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Detalhes extends StatefulWidget {
  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  Future<List> _getAPI() async {
    http.Response res = await http.get('https://baconipsum.com/api/?type=3');
    return json.decode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.yellow,
        ),
        FutureBuilder(
            future: _getAPI(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.amber,
                  ),
                );
              } else {
                List data = snapshot.data;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Text(
                      data.toString(),
                      style: GoogleFonts.specialElite(
                          textStyle: TextStyle(fontSize: 25)),
                    );
                  },
                );
              }
            })
      ],
    );
  }
}
