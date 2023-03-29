import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiprojects/designone/myprofile.dart';
import 'package:uiprojects/designone/reels.dart';
import 'package:uiprojects/designone/store.dart';
import 'package:uiprojects/designone/widget/postwidget.dart';
import 'package:uiprojects/designone/widget/storywidget.dart';

class InstaHome extends StatefulWidget {
  InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  int myIndex = 0;

  @override
  List storysuserName = ["khadija", "Mohammed", "haland", "messi", "kvara"];

 

  String detective = "assets/cat.jpg";

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
      
        appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: false,
            title: Text("Instagram"),
            actions: [
              Icon(Icons.favorite),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.share),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.add),
              SizedBox(
                width: 15,
              )
            ]),
        body: Column(children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Container(
                height: 115,
                width: 350,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.black),
                              ),
                              Positioned(
                                right: 5,
                                bottom: 5,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    "assets/cat.jpg",
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: -2,
                                  right: 1,
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.blue,
                                    size: 25,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text("My Story",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      StoryWidget(userName: "messi"),
                      StoryWidget(userName: "kvara"),
                      StoryWidget(userName: "benkiran"),
                      StoryWidget(userName: "mbappe"),
                      StoryWidget(userName: "kvara"),
                      StoryWidget(userName: "benkiran"),
                      StoryWidget(userName: "mbappe"),
                    ],
                  ),
                ),
              ),
            )
          ]),

          Container(
            width: 400,
            height: 551,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: storysuserName.length,
                itemBuilder: (BuildContext context, int index) {
                  return PostWidget(userName: storysuserName[index]);
                },
              ),
            ),
          ) //end story section
        ]),
      ),
    );
  }
}
