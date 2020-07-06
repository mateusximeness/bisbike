import 'package:bisbike/models/UserLogin.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController _controladorUserName = TextEditingController();
  final TextEditingController _controladorPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
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

        mainAxisSize: MainAxisSize.min,
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
                  icon: Icon(Icons.lock),
                  labelText: 'Senha de usuario',
                  hintText: 'Digite sua senha',
                ),
              )),
          RaisedButton(
            color: Colors.deepPurpleAccent,
            textColor: Colors.white,
            onPressed: () {
              final result =startLogin(context);
              debugPrint("$result");
            },

            child: const Text('Login', style: TextStyle(fontSize: 20)),
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.deepPurple,
            onPressed: () {
            },
            child: const Text('Cadastro', style: TextStyle(fontSize: 20)),
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
