import 'package:flutter/material.dart';

void main(){
  runApp(Feed());
}

class Feed extends StatelessWidget {
  static const String id = 'Feed';
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(

                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      labelText: "Search",
                      labelStyle: TextStyle(
                        color: Colors.black
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),
                    Expanded(
                        child: Image(
                          image: NetworkImage('https://images.pexels.com/photos/22857519/pexels-photo-22857519/free-photo-of-a-cat-sitting-by-water-in-istanbul-turkey-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        )),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
