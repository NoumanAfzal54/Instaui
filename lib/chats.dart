import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled99/Scroll.dart';

void main() {
  runApp(Chats());
}

class Chats extends StatelessWidget {
  static const String id = 'Chats';

  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, scroll.id);
                    },
                    icon: Icon(FontAwesomeIcons.arrowLeft),
                    color: Colors.black,
                  ),
                  SizedBox(width: 15),
                  Text(
                    'AlexaCooper.official',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    FontAwesomeIcons.angleDown,
                    size: 15,
                    color: Colors.black,
                  ),
                  SizedBox(width: 90),
                  Icon(
                    FontAwesomeIcons.pencil,
                    size: 19,
                    color: Colors.black,
                  ),
                ],
              ),
              Divider(
                thickness: 0.1,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Ask Meta Ai or Search",
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.grey,
                      filled: true,
                      prefixIcon: Icon(
                        FontAwesomeIcons.meta,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70.0))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      child: SizedBox(
                        width: 60,
                        height: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              hintText: "Note",
                              hintStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text("Your Note"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Messages",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 183),
                    child: Text(
                      "Requests(2)",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    String imageurl, text;
                    int i = 0;
                    if (index == 0) {
                      imageurl =
                          'https://images.pexels.com/photos/22814807/pexels-photo-22814807/free-photo-of-blonde-woman-posing-in-pink-dress.jpeg?auto=compress&cs=tinysrgb&w=600';
                      text = "Kathy Kelvin xD";
                    } else if (index == 1) {
                      imageurl =
                          'https://images.pexels.com/photos/4947563/pexels-photo-4947563.jpeg?auto=compress&cs=tinysrgb&w=600';
                      text = "David";
                    } else if (index == 2) {
                      text = "Angelina";

                      imageurl =
                          'https://images.pexels.com/photos/5561354/pexels-photo-5561354.jpeg?auto=compress&cs=tinysrgb&w=600';
                    } else if (index == 3) {
                      text = "George_Cooper";
                      imageurl =
                          'https://images.pexels.com/photos/7319346/pexels-photo-7319346.jpeg?auto=compress&cs=tinysrgb&w=600';
                    } else if (index == 4) {
                      text = "Aries";

                      imageurl =
                          'https://images.pexels.com/photos/1906157/pexels-photo-1906157.jpeg?auto=compress&cs=tinysrgb&w=600';
                    } else if (index == 5) {
                      imageurl =
                          'https://images.pexels.com/photos/3775156/pexels-photo-3775156.jpeg?auto=compress&cs=tinysrgb&w=600';
                      text = 'Nancy';
                    } else if (index == 6) {
                      text = "Angelina";

                      imageurl =
                          'https://images.pexels.com/photos/5561354/pexels-photo-5561354.jpeg?auto=compress&cs=tinysrgb&w=600';
                    } else if (index == 7) {
                      text = "George_Cooper";
                      imageurl =
                          'https://images.pexels.com/photos/7319346/pexels-photo-7319346.jpeg?auto=compress&cs=tinysrgb&w=600';
                    } else if (index == 8) {
                      text = "Aries";

                      imageurl =
                          'https://images.pexels.com/photos/1906157/pexels-photo-1906157.jpeg?auto=compress&cs=tinysrgb&w=600';
                    } else {
                      imageurl =
                          'https://images.pexels.com/photos/3775156/pexels-photo-3775156.jpeg?auto=compress&cs=tinysrgb&w=600';
                      text = 'Nancy';
                    }
                    return ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(imageurl),
                        ),
                      ),
                      title: Text(text),
                      subtitle: Text('Sent you a reel by discomplimentor..'),
                      trailing: Icon(CupertinoIcons.camera),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
