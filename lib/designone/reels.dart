import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    String detective = "assets/cat.jpg";
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 40,
                    width: 318.7,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Search"),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 642,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 1, crossAxisSpacing: 1),
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
    ));
  }
}
