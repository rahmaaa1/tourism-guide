//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project/models/emotios_face.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_project/widgets/app_drawer.dart';

//import 'package:flutter_project/screens/log_in.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  static const screenRoute = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 121, 155, 228),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Home ",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'MadimiOne',
                    color: Color.fromARGB(255, 255, 255, 255),
                    //fontWeight: FontWeight.bold,
                  )),
              Text("Page",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'MadimiOne',
                    color: Color.fromARGB(255, 22, 23, 82),
                    //fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          centerTitle: true,
        ),
        drawer: Appdrawer(),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              TextField(
                //الكلام اللي هيتحط جوا خيكون عامل ازاي
                // style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 229, 234, 238),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "search",
                    prefixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'How Do You Feel ?',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontFamily: 'MadimiOne'),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //happy
                  Column(
                    children: [
                      Emotionsface(
                        emotionsface: '😃',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Happy',
                          style: TextStyle(
                              color: Color.fromARGB(255, 22, 23, 82),
                              fontSize: 12,
                              fontFamily: 'MadimiOne'))
                    ],
                  ),

                  Column(
                    children: [
                      Emotionsface(
                        emotionsface: '😍',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Excited',
                          style: TextStyle(
                              color: Color.fromARGB(255, 22, 23, 82),
                              fontSize: 12,
                              fontFamily: 'MadimiOne'))
                    ],
                  ),

                  Column(
                    children: [
                      Emotionsface(
                        emotionsface: '🙂',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Fine',
                          style: TextStyle(
                              color: Color.fromARGB(255, 22, 23, 82),
                              fontSize: 12,
                              fontFamily: 'MadimiOne'))
                    ],
                  ),

                  Column(
                    children: [
                      Emotionsface(
                        emotionsface: '☹️',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Sad',
                          style: TextStyle(
                              color: Color.fromARGB(255, 22, 23, 82),
                              fontSize: 12,
                              fontFamily: 'MadimiOne'))
                    ],
                  ),
                  Column(
                    children: [
                      //CarouselSlider
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
