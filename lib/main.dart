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
          body: ListView(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.redAccent,
                child: Image.network(
                  "https://cdn2.iconfinder.com/data/icons/cute-tech-icon-set-1/1000/Android-512.png",
                  fit: BoxFit.cover,
                ),
              ),
              //Adding Display Name
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, //maybe center
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Display Name",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              //Container for action items
              Container(
                margin: EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //"Call" action item
                    buildCallButton(),
                    //"Text" action item
                    buildTextButton(),
                    //"Video" action item
                    buildVideoCallButton(),
                    //"Email" action item
                    buildEmailButton(),
                    //"Directions" action item
                    buildDirectionsButton(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

//Adding "Call" action item
Widget buildCallButton() {
  return Column(
    children: [
      IconButton(
        icon: Icon(
          Icons.call,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Call"),
    ],
  );
}

//Adding "Text" action item
Widget buildTextButton() {
  return Column(
    children: [
      IconButton(
        icon: Icon(
          Icons.message,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Text"),
    ],
  );
}

//Adding "Video" action item
Widget buildVideoCallButton() {
  return Column(
    children: [
      IconButton(
        icon: Icon(
          Icons.video_call,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Video"),
    ],
  );
}

//Adding "Email" action item
Widget buildEmailButton() {
  return Column(
    children: [
      IconButton(
        icon: Icon(
          Icons.email,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Email"),
    ],
  );
}

//Adding "Directions" action item
Widget buildDirectionsButton() {
  return Column(
    children: [
      IconButton(
        icon: Icon(
          Icons.directions,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Directions"),
    ],
  );
}
