import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Componentes {
  static viwei(
    size,
    city,
    String data,
    String datedia,
    String max,
    String min,
    String descricao,
  ) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        height: size.height * 0.84,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          children: [
            Container(
              child: Stack(children: [
                Container(
                  width: size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/imgs/ceu_limpo.jpg",
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  width: 100,
                  child: Icon(
                    FontAwesomeIcons.cloudSun,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 10,
                  child: Container(
                    width: size.width * 0.4,
                    child: Text(
                      descricao,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 15,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Text(
                        "min",
                        style: TextStyle(
                            color: Colors.black87,
                            //fontSize:25,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Text(
                      min,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 35,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      "°C",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Text(
                        " | max",
                        style: TextStyle(
                            color: Colors.black87,
                            //fontSize: 25,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Text(
                      max,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      "°C",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                  ]),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      datedia + data,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      city,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          decoration: TextDecoration.none),
                    ),
                  ]),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            )
          ],
        ),
      ),
    );
  }

  static viweihoje(
      size,
      String temperatura,
      String time,
      String data,
      String descricao,
      String dayNig,
      String city,
      String umidade,
      String vento,
      String am,
      String pm) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        height: size.height * 0.84,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: dayNig == "dia"
                      ? Image.asset("assets/imgs/ceu_limpo.jpg")
                      : Image.asset("assets/imgs/noite_limpa.jpg"),
                ),
              ),
              Positioned(
                  top: 15,
                  left: 15,
                  width: 100,
                  child: dayNig == "dia"
                      ? Icon(
                          FontAwesomeIcons.cloudSun,
                          color: Colors.white,
                          size: 80,
                        )
                      : Icon(
                          FontAwesomeIcons.cloudMoon,
                          color: Colors.white,
                          size: 80,
                        )),
              Positioned(
                right: 15,
                top: 10,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 5),
                  child: Text(
                    time,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                ),
              ),
              Positioned(
                left: 15,
                bottom: 10,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 5),
                  child: Text(
                    descricao,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 15,
                child: Row(children: [
                  Text(
                    temperatura,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black87,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    "°C",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                ]),
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      city,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                  ]),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Umidade: " + umidade,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      "Velocidade do Vento: " + vento,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                  ]),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Por do Sol: " + pm,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      "Nascer do Sol: " + am,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          decoration: TextDecoration.none),
                    ),
                  ]),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            )
          ],
        ),
      ),
    );
  }
}
