import 'package:bisbike/views/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Codigo extends StatefulWidget {
  @override
  _CodigoState createState() => _CodigoState();
}

class _CodigoState extends State<Codigo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirmação de Código"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(60, 30, 60, 20),
            child: TextField(
              textAlign: TextAlign.center,
              maxLength: 6,
              keyboardType: TextInputType.number,
              keyboardAppearance: Brightness.dark,
              style: TextStyle(
                fontSize: 25,
              ),
              decoration: InputDecoration(
                hintText: "Digite o Código aqui",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 5),
            width: 400,
            child: Text(
              "Enviamos um código para você, verifique a caixa de SMS. Não COMPARTILHE seu código com ninguém !",
              style: TextStyle(
                fontSize: 19,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          RaisedButton(
              child: Text(
                  "Confirmar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login()
                    )
                );
               }
              )
        ],
      ),
    );
  }
}
