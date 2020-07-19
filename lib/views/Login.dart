import 'package:bisbike/business/LoginService.dart';
import 'package:bisbike/models/UserLogin.dart';
import 'package:bisbike/views/Cadastro.dart';
import 'package:bisbike/views/_PaginaInicial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController _controladorUserName = TextEditingController();
  final TextEditingController _controladorPassword = TextEditingController();
  final LoginService loginService = LoginService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          centerTitle: true ,
          automaticallyImplyLeading: false, // hides leading widget
          backgroundColor: Colors.white,
          title: Image(
            image: NetworkImage('https://i.imgur.com/qMfGTm2.png',scale: 15 ),
          ),

        ),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controladorUserName,
                style: TextStyle(fontSize: 16.0),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Email ou nome de usuario',
                  hintText: 'Email ou Usuário',
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controladorPassword,
                style: TextStyle(fontSize: 16.0),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Senha de usuario',
                  hintText: 'Digite sua senha',
                ),
              )),
          RaisedButton(
            color: Colors.deepPurple,
            textColor: Colors.white,
            onPressed: () {
              final result =startLogin(context);
              if(result)
                Navigator.pushReplacement (
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaginaInicial()
                    )
                );

              debugPrint("$result");
            },

            child: const Text('Entrar', style: TextStyle(fontSize: 20)),
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.deepPurple,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cadastro()
                  )
              );
            },
            child: const Text('Cadastro', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }

  bool startLogin(BuildContext context) {
    final String userNameEmail = _controladorUserName.text;
    final String password = _controladorPassword.text;

    if (userNameEmail.isNotEmpty && password.isNotEmpty){
      return loginService.validaLogin(userNameEmail, password);
    } else {
      return false;
    }
  }
}
