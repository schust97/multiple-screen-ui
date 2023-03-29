import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoffeTile extends StatelessWidget {
  final String imagePath;
  final String coffeName;
  final String price;
  const CoffeTile(
      {super.key,
      required this.imagePath,
      required this.coffeName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(10)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(imagePath),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeName,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'With Almond Milk',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          //
          //
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ $price",
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(16)),
                    child: Icon(Icons.add)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
