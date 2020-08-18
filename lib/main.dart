import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Scaffold for home property
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
