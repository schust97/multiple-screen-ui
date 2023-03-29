import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiprojects/designone/instahome.dart';
import 'package:uiprojects/designone/navigator.dart';
import 'package:uiprojects/designtwo/coffeshop.dart';

class UiPages extends StatelessWidget {
  const UiPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
                onTap: (() => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NavigatorPage(),
                    ))),
                child: Container(
                  child: Text("instagram clone ui"),
                  alignment: Alignment.center,
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
                onTap: (() => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CoffeShop(),
                    ))),
                child: Container(
                  child: Text("coffeshop ui"),
                  alignment: Alignment.center,
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20),
          //   child: GestureDetector(
          //       child: Container(
          //     child: Text("Page 3"),
          //     alignment: Alignment.center,
          //     height: 60,
          //     width: 100,
          //     decoration: BoxDecoration(
          //         color: Colors.red,
          //         borderRadius: BorderRadius.only(
          //             bottomLeft: Radius.circular(10),
          //             topLeft: Radius.circular(10))),
          //   )),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20),
          //   child: GestureDetector(
          //       child: Container(
          //     child: Text("Page 4"),
          //     alignment: Alignment.center,
          //     height: 60,
          //     width: 100,
          //     decoration: BoxDecoration(
          //         color: Colors.grey,
          //         borderRadius: BorderRadius.only(
          //             bottomLeft: Radius.circular(10),
          //             topLeft: Radius.circular(10))),
          //   )),
          // )
        ],
      ),
    ));
  }
}
