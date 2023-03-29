import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostWidget extends StatelessWidget {
  String userName;
  PostWidget({super.key, required this.userName});
  String detective = "assets/cat.jpg";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/cat.jpg"),
                    ),
                    Text(
                      "  $userName ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.menu,
                color: Colors.white,
                size: 25,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 350,
            width: double.infinity,
            child: Image.asset(
              detective,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.comment_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
              Icon(
                Icons.bookmark,
                color: Colors.white,
                size: 25,
              )
            ],
          )
        ],
      ),
    );
  }
}
