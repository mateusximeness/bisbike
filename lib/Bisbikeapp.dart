
import 'package:bisbike/views/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bisbikeapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Login()
    )
    );
  }
}
