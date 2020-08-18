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
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.star_border),
              color: Colors.black,
              onPressed: () {
                print("Starred");
              },
            )
          ],
        ),
        body: Container(
          height: 250,
          width: double.infinity,
          color: Colors.redAccent,
          child: Image.network(
            "https://cdn2.iconfinder.com/data/icons/cute-tech-icon-set-1/1000/Android-512.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
