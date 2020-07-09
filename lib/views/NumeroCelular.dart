import 'dart:ui';

import 'package:bisbike/views/SegCode.dart';
import 'package:flutter/material.dart';

class NumeroCelular extends StatefulWidget {
  @override
  _NumeroCelularState createState() => _NumeroCelularState();
}

class _NumeroCelularState extends State<NumeroCelular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Número de Celular"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
            child: TextField(
              maxLength: 11,
              maxLengthEnforced: true,
              keyboardType: TextInputType.phone,
              keyboardAppearance: Brightness.dark,
              style: TextStyle(
                fontSize: 30,
              ),
              decoration: InputDecoration(
                hintText: "(99) 99999-9999",
                labelText: "Seu número de celular",
                labelStyle: TextStyle(
                    fontSize: 20
                ),
                icon: Icon(Icons.phone_android),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 15),
              width: 400,
              child: Text(
                "Enviaremos um código de segurança por SMS em breve. Seu número de celular nos ajudará a manter sua conta em segurança !",
                style: TextStyle(fontSize: 19,
                    color: Colors.black54),
              )
          ),
          Container(
            height: 100,
            width: 200,
            padding: EdgeInsets.all(20),
            child: RaisedButton(
                child: Text(
                  "Confirmar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                color: Colors.deepPurple,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Codigo()
                      )
                  );
                }
            ),

          )
        ],
      ),
    );
  }
}
