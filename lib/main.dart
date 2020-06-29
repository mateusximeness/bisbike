import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text("BisBike"),
        ),
        body: Column(
          children: [
            const Image(
              image: NetworkImage('https://i.imgur.com/qMfGTm2.png'),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  style: TextStyle(fontSize: 16.0),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email ou nome de usuario',
                    hintText: 'exemplo@gmail.com ou nickusuario',
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  style: TextStyle(fontSize: 16.0),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha de usuario',
                    hintText: '*********',
                  ),
                )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),
        )),
  ));
}
