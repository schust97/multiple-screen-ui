import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryWidget extends StatelessWidget {
  String userName;
  StoryWidget({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
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
            ],
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text("$userName", style: TextStyle(color: Colors.white))
      ],
    );
  }
}
