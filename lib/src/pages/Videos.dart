import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  Future<List> _getAPI() async {
    http.Response res = await http.get('https://baconipsum.com/api/?type=4');
    return json.decode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.green,
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
