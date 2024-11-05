import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled99/chats.dart';
import 'Scroll.dart';

void main() {
  runApp( Login());
}

class Login extends StatelessWidget {
  static const String id="Login";
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: (){
              Navigator.pushNamed(context, scroll.id);
            },
            icon: Icon(
              FontAwesomeIcons.angleLeft,color: Colors.red,
            ),
          ),
        ),

        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: 90,width: 30,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                    ),
                    child: Icon(
                      size: 40,
                      FontAwesomeIcons.instagram,
                      color: Colors.red, // Color of the icon itself
                    ),
                  ),

                  SizedBox(width: 20),
                 Row(
                   children: [
                     Text("Insta",style: TextStyle(
                       fontSize: 25,color: Colors.red
                     ),),
                     AnimatedTextKit(
                       animatedTexts: [
                         RotateAnimatedText("gram",textStyle: TextStyle(
                             fontSize: 25,color: Colors.red,
                         ),)

                       ],
                       totalRepeatCount: 1000,
                     ),
                   ],
                 ),

                ],

              ),
              SizedBox(height: 100),

              Container(
                height: 100,
                width: 350,
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.red
                    ),
                    // hintStyle: Color(0xff323F4B),
                    fillColor: Colors.black,
                    // fillColor: Colors.black,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Colors.red,
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Color(0xffE4E7EB)),
                    //     borderRadius: BorderRadius.circular(10)
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),


                    ),
                  ),
                ),
              ),

              Container(
                height: 100,
                width: 350,
                child: TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.red
                    ),
                    suffixIcon: Icon(
                        Icons.visibility_off_outlined
                            ,color: Colors.red,
                    ),
                    // hintStyle: Color(0xff323F4B),
                    fillColor: Colors.black,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.red,
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Color(0xffE4E7EB)),
                    //   borderRadius: BorderRadius.circular(10)

                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              InkWell(
              onTap: () async{
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('email', emailcontroller.text);
                sp.setString('password', passwordcontroller.text);
                sp.setBool('islogin', true);

                if(emailcontroller.text.isNotEmpty && passwordcontroller.text.isNotEmpty){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>scroll()));
                }
              },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 10
                    )
                  ),

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('Forgot Password',style: TextStyle(
                        decoration: TextDecoration.underline,color: Colors.red,fontSize: 17
                    ),),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubic2',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubic1',
                      color: Colors.red,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}