import 'package:bisbike/views/NumeroCelular.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Cadastro",
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Campo Nome
            Padding(
              padding: const EdgeInsets.fromLTRB(10,20,15,10),
                child: TextField(
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Nome Completo',
                    hintText: 'Digite seu nome completo',
                  ),
                ),
            ),
            // Campo Email
            Padding(
              padding: const EdgeInsets.fromLTRB(10,10,15,10),
              child: TextField(
                style: TextStyle(fontSize: 16.0),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Email',
                  hintText: 'exemplo@gmail.com',
                ),
              ),
            ),
            // Campo Senha de Usuário
            Padding(
                padding: const EdgeInsets.fromLTRB(10,10,15,10),
            child: TextField(
              style: TextStyle(fontSize: 16.0),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Senha de usuario',
                hintText: 'Digite sua senha',
              )
            ),
            ),
            // Campo Confirmação de Senha
            Padding(
              padding: const EdgeInsets.fromLTRB(10,10,15,10),
              child: TextField(
                style: TextStyle(fontSize: 16.0),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Confirme sua senha',
                hintText: 'Digite sua senha',
              )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,10,15,10),
              child: RaisedButton(
                  child: Text("Confirmar"),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NumeroCelular()
                        )
                    );
                  }
              ),
            )
          ],
        ));
  }
}
