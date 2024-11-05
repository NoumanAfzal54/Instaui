import 'package:flutter/material.dart';
import 'package:untitled99/chats.dart';
import 'package:untitled99/feed.dart';
import 'package:untitled99/login.dart';
import 'package:untitled99/logo.dart';
import 'Scroll.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Logo.id,
      routes: {
        scroll.id: (context) => scroll(),
        Feed.id : (context) => Feed(),
        Login.id: (context) => Login(),
        Chats.id: (context) => Chats(),
        Logo.id:( context) => Logo(),
      },
    );
  }
}
