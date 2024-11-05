import 'package:bouncy_widget/bouncy_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled99/Scroll.dart';
import 'package:untitled99/login.dart';

void main(){
  runApp(Logo());
}

class Logo extends StatelessWidget {
  static const String id='Logo';
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
               padding: const EdgeInsets.all(30),
               child: Bouncy(
                duration: Duration(microseconds: 4000),
                lift: 20,
                ratio: 0.9,
                pause: 0.9,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.instagram, color: Color.fromRGBO(233, 30, 99, 1.0),
                      size: 100,
                    ), onPressed: () {
                      Navigator.pushNamed(context, Login.id);
                  },
                  ),
                ),
                           ),
             ),
            SizedBox(height: 100,),
            Text("from",style: TextStyle(
                color: Colors.white,fontSize: 20
            ),),
            Row(

              children: [
                SizedBox(width: 140,),
                Icon(FontAwesomeIcons.meta, color: Color.fromRGBO(233, 30, 99, 1.0),),
                SizedBox(width: 20,),
                Text("Meta",style: TextStyle(
                    color: Colors.white,fontSize: 20
                ),)
              ],
            )



          ],
        ),
      ),
    );
  }
}
