import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Divider(color: Colors.grey),
              //Mobile phone number
              mobilePhoneListTile(),
              //Other phone number"
              otherPhoneListTile(),
              Divider(color: Colors.grey),
              //Email
              emailListTile(),
              Divider(color: Colors.grey),
              //Adress
              addressListTile(),
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

//Adding "Mobile phone number" item
Widget mobilePhoneListTile() {
  return ListTile(
    leading: Icon(Icons.phone_android),
    title: Text("+90 5xx xxx xx xx"),
    subtitle: Text("mobile"),
    trailing: IconButton(
      icon: Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

//Adding "Other phone number" item
Widget otherPhoneListTile() {
  return ListTile(
    leading: Icon(Icons.call),
    title: Text("xxx-xxx-xxxx"),
    subtitle: Text("other"),
    trailing: IconButton(
      icon: Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

//Adding "Email" item
Widget emailListTile() {
  return ListTile(
    leading: Icon(Icons.email),
    title: Text("info@softalika.com"),
    subtitle: Text("work"),
  );
}

//Adding "Adress" item
Widget addressListTile() {
  return ListTile(
    leading: Icon(Icons.location_on),
    title: Text("Ankara, Türkiye"),
    subtitle: Text("home"),
    trailing: IconButton(
      icon: Icon(Icons.directions),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}
