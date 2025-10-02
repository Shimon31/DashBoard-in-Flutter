import 'package:dashboard_design_flutter/util/emoji.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi,Shimon",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "28 Sept,2025",
                        style: TextStyle(
                          color: Colors.blue[100],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(Icons.notifications, color: Colors.white),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              // search bar
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 5),
                    Text("Search", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How Do You Feel Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Emoji(emoji: "😫"),
                      SizedBox(height: 5,),
                      Text("Bad",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ],
                  ),
                  Column(
                    children: [
                      Emoji(emoji: "😀"),
                      SizedBox(height: 5,),
                      Text("Happy",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ],
                  ),
                  Column(
                    children: [
                      Emoji(emoji: "😭"),
                      SizedBox(height: 5,),
                      Text("Sad",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ],
                  ),
                  Column(
                    children: [
                      Emoji(emoji: "😡"),
                      SizedBox(height: 5,),
                      Text("Angry",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
