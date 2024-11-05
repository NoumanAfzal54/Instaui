import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled99/chats.dart';
import 'package:untitled99/feed.dart';
import 'package:untitled99/login.dart';
import 'package:untitled99/logo.dart';
import 'main.dart';

void main() {
  runApp(MyApp());
}

class scroll extends StatelessWidget {
  static const String id='Scroll';
  const scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Text(
                  'Instagram',
                  style: TextStyle(
                      fontFamily: 'Lobster-Regular',
                      color: Colors.white,
                      fontSize: 25),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  FontAwesomeIcons.angleDown,
                  color: Colors.white,
                ),
              ],
            ),
            actions: [
              Icon(FontAwesomeIcons.heart, color: Colors.white),
              SizedBox(width: 5),

               IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, Chats.id);
                },
                icon: Icon(
                  FontAwesomeIcons.facebookMessenger,color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.black,
            child:  ListView(
              children: [
                UserAccountsDrawerHeader(
                  margin: EdgeInsets.only(bottom: 30),
                  arrowColor: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  accountName: Text("Alexa Cooper",style: TextStyle(
                    color: Colors.white
                  ),),
                  accountEmail: Text("Alexo12@gmail.com",style: TextStyle(
                      color: Colors.white)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                ),

                ListTile(
                  leading: Icon(
                      // CupertinoIcons.home
                    FontAwesomeIcons.houseUser,      color: Colors.white
                  ),
                  title: Text('Home',style: TextStyle(
                      color: Colors.white)),
                  onTap: (){
                    Navigator.pushNamed(context, scroll.id);
                  },
                ),

                ListTile(
                  leading: Icon(
                    Icons.dynamic_feed_rounded,      color: Colors.white
                  ),
                  title: Text('Feed',style: TextStyle(
                      color: Colors.white)),
                  onTap: (){
                    Navigator.pushNamed(context,Feed.id );
                  },

                ),
                ListTile(
                  leading: Icon(
                      FontAwesomeIcons.message,      color: Colors.white
                  ),
                  title: Text('Chats',style: TextStyle(
                      color: Colors.white)),
                  onTap: (){
                    Navigator.pushNamed(context,Chats.id );
                  },

                ),
                ListTile(
                  leading: Icon(
                      FontAwesomeIcons.diagramSuccessor,      color: Colors.white
                  ),
                  title: Text('Log In',style: TextStyle(
                      color: Colors.white)),
                  onTap: (){
                    Navigator.pushNamed(context,Login.id);
                  },

                ),
                ListTile(
                  leading: Icon(
                      FontAwesomeIcons.skullCrossbones,      color: Colors.white
                  ),
                  title: Text('Logo',style: TextStyle(
                      color: Colors.white)),
                  onTap: (){
                    Navigator.pushNamed(context,Logo.id);
                  },

                ),


              ],
            ),
            ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      width: 390,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(index %
                                            2 ==
                                            0
                                            ? 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'
                                            : 'https://images.pexels.com/photos/4947563/pexels-photo-4947563.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                        radius: 40,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 10,
                                          color: Colors.black26,
                                        )),
                                  ),
                                ),
                                Text(index == 0 ? "Your Story" : "David"),
                              ],
                            );
                          }),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 3),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("AlexaCooper.offical"),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.verified_rounded,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.music,size: 13,),
                            SizedBox(width: 3,),
                            Text('Nox Arcana ~ Fairy Tale')
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 125),
                      child: PopupMenuButton(
                          child: Icon(Icons.more_vert_rounded),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Icon(Icons.queue_rounded),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      Icon(Icons.qr_code_scanner_rounded),
                                      Divider(
                                        height: 20,
                                        thickness: 20,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_outline_sharp),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Add to favourites')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.supervised_user_circle),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Follow")
                                    ],
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.error_outline_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Why are you seeing this post")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.visibility_off_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Hide")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.verified_user_outlined),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("About this account")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.error_outline_outlined,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Report",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 346,
                          child: Image(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.heart),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.send_rounded),
                    SizedBox(
                      width: 260,
                    ),
                    Icon(
                      FontAwesomeIcons.bookmark
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('Liked by Robert_lee and 58,496 others')
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'AlexaCooper',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Whats up verybody<3")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text("View all 129 comments"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 330),
                  child: Text("April 12"),
                ),
                // ================================================= (Alexa Cooper)
            SizedBox(
              height: 10,
            ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Suggested for you'),
                    SizedBox(
                      width: 210,
                    ),
                    Text('See all'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),



                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      Padding(
                           padding: const EdgeInsets.only(left: 30),
                           child: Container(
                             height: 220,
                             width: 200,
                             decoration: BoxDecoration(
                               color: Colors.blueGrey,
                               borderRadius: BorderRadius.circular(10.0)
                             ),
                             child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),

                                   CircleAvatar(
                                    backgroundImage: NetworkImage('https://images.pexels.com/photos/22814807/pexels-photo-22814807/free-photo-of-blonde-woman-posing-in-pink-dress.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    radius: 65,
                                  ),

                                SizedBox(
                           height: 3,
                                ),
                                Text('Kathy Kelvin xD',style: TextStyle(
                                  color: Colors.white
                                ),),
                                SizedBox(
                                  height: 7,
                                ),

                                Container(
                                  height: 40,width: 170,
                                  child: Text('Follow',textAlign: TextAlign.center,style: TextStyle(
                                    fontSize: 18,color: Colors.white
                                  ),),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10.0),
                                     border: Border.all(
                                       color: Colors.black,
                                       width: 5
                                     )
                                  ),
                                )

                              ],
                                                   ),
                           ),
                         ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),

                              CircleAvatar(
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf8LZk98dkqzBdcXuQ4OhFcAg4Oiv6Gye9DQ&s'),
                                radius: 65,
                              ),

                              SizedBox(
                                height: 3,
                              ),
                              Text('Cristiano',style: TextStyle(
                                  color: Colors.white
                              ),),
                              SizedBox(
                                height: 7,
                              ),

                              Container(
                                height: 40,width: 170,
                                child: Text('Follow',textAlign: TextAlign.center,style: TextStyle(
                                    fontSize: 18,color: Colors.white
                                ),),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 5
                                    )
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),

                              CircleAvatar(
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsCZWNwwbXrUCuZsxOSUafdcrnATVspkNHCA&s'),
                                radius: 65,
                              ),

                              SizedBox(
                                height: 3,
                              ),
                              Text('Imran Khan',style: TextStyle(
                                  color: Colors.white
                              ),),
                              SizedBox(
                                height: 7,
                              ),

                              Container(
                                height: 40,width: 170,
                                child: Text('Follow',textAlign: TextAlign.center,style: TextStyle(
                                    fontSize: 18,color: Colors.white
                                ),),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 5
                                    )
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),

                              CircleAvatar(
                                backgroundImage: NetworkImage('https://pyxis.nymag.com/v1/imgs/a5f/165/cf12f71bac777059733b1b9fdb498894d5-billie-eilish-new-album.1x.rsquare.w1400.jpg'),
                                radius: 65,
                              ),

                              SizedBox(
                                height: 3,
                              ),
                              Text('Billie eilish',style: TextStyle(
                                  color: Colors.white
                              ),),
                              SizedBox(
                                height: 7,
                              ),

                              Container(
                                height: 40,width: 170,
                                child: Text('Follow',textAlign: TextAlign.center,style: TextStyle(
                                    fontSize: 18,color: Colors.white
                                ),),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 5
                                    )
                                ),
                              )

                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                ),






















                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    SizedBox(width: 3),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("George_jr.offical"),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.verified_rounded,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.music_note_sharp),
                            Text('birmingham slash~~')
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 125),
                      child: PopupMenuButton(
                          child: Icon(Icons.more_vert_rounded),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Icon(Icons.queue_rounded),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      Icon(Icons.qr_code_scanner_rounded),
                                      Divider(
                                        height: 20,
                                        thickness: 20,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_outline_sharp),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Add to favourites')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.supervised_user_circle),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Follow")
                                    ],
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.error_outline_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Why are you seeing this post")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.visibility_off_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Hide")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.verified_user_outlined),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("About this account")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.error_outline_outlined,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Report",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 240,
                          width: 390,
                          child: Image(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.favorite_outline_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.comment_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.send_rounded),
                    SizedBox(
                      width: 260,
                    ),
                    Icon(
                      Icons.bookmark_outline_outlined,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg"),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('Liked by Alexa_Cooper.official and 123,232 others')
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'George_jr.official',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Fake World?")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text("View all 129 comments"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text("Jan 12,2022"),
                ),
                // ================================================= (George)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
