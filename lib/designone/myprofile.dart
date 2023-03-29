import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    String detective = "assets/cat.jpg";
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(children: [
            Icon(Icons.lock),
            SizedBox(
              width: 10,
            ),
            Text("Detective"),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 25,
            )
          ]),
          actions: [
            Icon(Icons.add_box_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.menu),
            SizedBox(
              width: 10,
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(children: [
          Container(
            height: 120,
            alignment: Alignment.center,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                color: Colors.black),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: CircleAvatar(
                              radius: 40,
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
                      Text("Detectives", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Text(
                              "20",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Text(
                              "820",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Text(
                              "1220",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[850],
                  ),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[850],
                  ),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black,
            height: 440,
            width: double.infinity,
            child: Expanded(
              flex: 1,
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(tabs: [
                      Tab(
                        icon: Icon(Icons.square_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.bookmark_outline),
                      ),
                    ]),
                    Container(
                      color: Colors.black,
                      height: 392,
                      child: TabBarView(children: [
                        Container(
                            child: Container(
                          height: 642,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 1,
                                    crossAxisSpacing: 1),
                            scrollDirection: Axis.vertical,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset(
                                    detective,
                                    fit: BoxFit.cover,
                                  ));
                            },
                          ),
                        )),
                        Container(
                          height: 642,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 1,
                                    crossAxisSpacing: 1),
                            scrollDirection: Axis.vertical,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset(
                                    detective,
                                    fit: BoxFit.cover,
                                  ));
                            },
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}







































  // Container(
  //           height: 398,
  //           child: GridView(
  //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //                 crossAxisCount: 3, mainAxisSpacing: 1, crossAxisSpacing: 1),
  //             scrollDirection: Axis.vertical,
  //             children: [
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //               Container(
  //                   height: 80,
  //                   width: 80,
  //                   child: Image.asset(
  //                     detective,
  //                     fit: BoxFit.cover,
  //                   )),
  //             ],
  //           ),
  //         )