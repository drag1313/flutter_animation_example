import 'package:flutter/material.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getScreenHeightExcludeSafeArea(BuildContext context) {
  final double height = MediaQuery.of(context).size.height;
  final EdgeInsets padding = MediaQuery.of(context).padding;
  return height - padding.top - padding.bottom;
}

double getScreenWidthtExcludeSafeArea(BuildContext context) {
  final double width = MediaQuery.of(context).size.width;
  final EdgeInsets padding = MediaQuery.of(context).padding;
  return width - padding.top - padding.bottom;
}


/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  List jokes = [];

  //
  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    String url = 'https://www.rd.com/jokes/';
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    final nameClass =
        document.querySelectorAll('.entry-content .content-wrapper');

    for (var i = 0; i < nameClass.length; i++) {
      setState(() {
        jokes.add(nameClass[i].text.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokes"),
      ),
      body: Container(
        child: jokes.length == 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: jokes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "joke ${index + 1}: " + jokes[index],
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}

*/