import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'componentes/componentes.dart';

void main() {
  consultaClima();
}

List hoje = List();
List dia2 = List();
List dia3 = List();
List dia4 = List();
List dia5 = List();
List dia6 = List();
List dia7 = List();
List dia8 = List();
List dia9 = List();
List dia10 = List();

consultaClima() async {
  String url =
      "https://api.hgbrasil.com/weather?format=json-cors&key=f9de1ef5&woeid=457034";
  Response resposta = await get(url);
  Map clima = json.decode(resposta.body);
  hoje.add(clima["results"]["temp"]);
  hoje.add(clima["results"]["time"]);
  hoje.add(clima["results"]["date"]);
  hoje.add(clima["results"]["description"]);
  hoje.add(clima["results"]["currently"]);
  hoje.add(clima["results"]["city"]);
  hoje.add(clima["results"]["humidity"]);
  hoje.add(clima["results"]["wind_speedy"]);
  hoje.add(clima["results"]["sunrise"]);
  hoje.add(clima["results"]["sunset"]);

  print(hoje);
  dia2.add(clima["results"]["forecast"][1]["date"]);
  dia2.add(clima["results"]["forecast"][1]["weekday"]);
  dia2.add(clima["results"]["forecast"][1]["max"]);
  dia2.add(clima["results"]["forecast"][1]["min"]);
  dia2.add(clima["results"]["forecast"][1]["description"]);

  dia3.add(clima["results"]["forecast"][2]["date"]);
  dia3.add(clima["results"]["forecast"][2]["weekday"]);
  dia3.add(clima["results"]["forecast"][2]["max"]);
  dia3.add(clima["results"]["forecast"][2]["min"]);
  dia3.add(clima["results"]["forecast"][2]["description"]);

  dia4.add(clima["results"]["forecast"][3]["date"]);
  dia4.add(clima["results"]["forecast"][3]["weekday"]);
  dia4.add(clima["results"]["forecast"][3]["max"]);
  dia4.add(clima["results"]["forecast"][3]["min"]);
  dia4.add(clima["results"]["forecast"][3]["description"]);

  dia5.add(clima["results"]["forecast"][4]["date"]);
  dia5.add(clima["results"]["forecast"][4]["weekday"]);
  dia5.add(clima["results"]["forecast"][4]["max"]);
  dia5.add(clima["results"]["forecast"][4]["min"]);
  dia5.add(clima["results"]["forecast"][4]["description"]);

  dia6.add(clima["results"]["forecast"][5]["date"]);
  dia6.add(clima["results"]["forecast"][5]["weekday"]);
  dia6.add(clima["results"]["forecast"][5]["max"]);
  dia6.add(clima["results"]["forecast"][5]["min"]);
  dia6.add(clima["results"]["forecast"][5]["description"]);

  dia7.add(clima["results"]["forecast"][6]["date"]);
  dia7.add(clima["results"]["forecast"][6]["weekday"]);
  dia7.add(clima["results"]["forecast"][6]["max"]);
  dia7.add(clima["results"]["forecast"][6]["min"]);
  dia7.add(clima["results"]["forecast"][6]["description"]);

  dia8.add(clima["results"]["forecast"][7]["date"]);
  dia8.add(clima["results"]["forecast"][7]["weekday"]);
  dia8.add(clima["results"]["forecast"][7]["max"]);
  dia8.add(clima["results"]["forecast"][7]["min"]);
  dia8.add(clima["results"]["forecast"][7]["description"]);

  dia9.add(clima["results"]["forecast"][8]["date"]);
  dia9.add(clima["results"]["forecast"][8]["weekday"]);
  dia9.add(clima["results"]["forecast"][8]["max"]);
  dia9.add(clima["results"]["forecast"][8]["min"]);
  dia9.add(clima["results"]["forecast"][8]["description"]);

  dia10.add(clima["results"]["forecast"][9]["date"]);
  dia10.add(clima["results"]["forecast"][9]["weekday"]);
  dia10.add(clima["results"]["forecast"][9]["max"]);
  dia10.add(clima["results"]["forecast"][9]["min"]);
  dia10.add(clima["results"]["forecast"][9]["description"]);

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.blue[800],
        fontFamily: 'Georgia',
      )));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return telaHome();
  }

  telaHome() {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 10,
      // Use a Builder here, otherwise `DefaultTabController.of(context)` below
      // returns null.
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          body: Container(
            color: Colors.black,
            padding:
                const EdgeInsets.only(top: 35, bottom: 10, left: 10, right: 10),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TabBarView(children: [
                    Componentes.viweihoje(
                        size,
                        "${hoje[0]}",
                        "${hoje[1]}",
                        "${hoje[2]}",
                        "${hoje[3]}",
                        "${hoje[4]}",
                        "${hoje[5]}",
                        "${hoje[6]}",
                        "${hoje[7]}",
                        "${hoje[8]}",
                        "${hoje[9]}"),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia2[0]}',
                      '${dia2[1]}',
                      '${dia2[2]}',
                      '${dia2[3]}',
                      '${dia2[4]}',
                    ),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia3[0]}',
                      '${dia3[1]}',
                      '${dia3[2]}',
                      '${dia3[3]}',
                      '${dia3[4]}',
                    ),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia4[0]}',
                      '${dia4[1]}',
                      '${dia4[2]}',
                      '${dia4[3]}',
                      '${dia4[4]}',
                    ),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia5[0]}',
                      '${dia5[1]}',
                      '${dia5[2]}',
                      '${dia5[3]}',
                      '${dia5[4]}',
                    ),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia6[0]}',
                      '${dia6[1]}',
                      '${dia6[2]}',
                      '${dia6[3]}',
                      '${dia6[4]}',
                    ),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia7[0]}',
                      '${dia7[1]}',
                      '${dia7[2]}',
                      '${dia7[3]}',
                      '${dia7[4]}',
                    ),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia8[0]}',
                      '${dia8[1]}',
                      '${dia8[2]}',
                      '${dia8[3]}',
                      '${dia8[4]}',
                    ),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia9[0]}',
                      '${dia9[1]}',
                      '${dia9[2]}',
                      '${dia9[3]}',
                      '${dia9[4]}',
                    ),
                    Componentes.viwei(
                      size,
                      "${hoje[5]}",
                      '${dia10[0]}',
                      '${dia10[1]}',
                      '${dia10[2]}',
                      '${dia10[3]}',
                      '${dia10[4]}',
                    ),
                  ]),
                ),
                TabPageSelector(
                  indicatorSize: 10,
                  selectedColor: Colors.blue,
                  color: Colors.white70,
                ),
                Container(
                  child: Stack(
                    children: [
                      Positioned(
                        child: RaisedButton.icon(
                          icon: Icon(Icons.home),
                          padding: EdgeInsets.only(left: 100, right: 100),
                          onPressed: () {
                            final TabController controller =
                                DefaultTabController.of(context);
                            if (!controller.indexIsChanging) {
                              controller.animateTo(0);
                            }
                          },
                          label: Text("Home"),
                        ),
                      ),
                      /*Positioned(
                        right: 0,
                        child: RaisedButton(
                          child: Icon(Icons.location_pin),
                          onPressed: () {
                            return consultaClima();
                          },
                        ),
                      ),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  skip(BuildContext context) {
    final TabController controller = DefaultTabController.of(context);
    if (!controller.indexIsChanging) {
      controller.animateTo(0);
    }
  }
}
