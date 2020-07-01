import 'package:bisbike/models/UserLogin.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController _controladorUserName = TextEditingController();
  final TextEditingController _controladorPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("BisBike"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: NetworkImage('https://i.imgur.com/qMfGTm2.png',),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controladorUserName,
                style: TextStyle(fontSize: 16.0),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email ou nome de usuario',
                  hintText: 'exemplo@gmail.com ou nome de usuario',
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
                  labelText: 'Senha de usuario',
                  hintText: '*********',
                ),
              )),
          RaisedButton(
            onPressed: () {
              final result =startLogin(context);
              debugPrint("$result");
            },

            child: const Text('Realizar Login', style: TextStyle(fontSize: 20)),
          ),
          RaisedButton(
            onPressed: () {
            },
            child: const Text('Cadastrar Usuario', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }

  bool startLogin(BuildContext context) {
    final String usernameEmail = _controladorUserName.text;
    final String password = _controladorPassword.text;
    debugPrint("$usernameEmail");
    debugPrint("$password");
    if (!usernameEmail.isEmpty && !password.isEmpty){
      final userLogin = UserLogin(usernameEmail, password);
      return true;
    } else {
      return false;
    }
  }
}
