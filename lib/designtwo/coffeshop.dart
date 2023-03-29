import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiprojects/designtwo/widget/coffe_tile.dart';
import 'package:uiprojects/designtwo/widget/coffe_type.dart';

class CoffeShop extends StatefulWidget {
  const CoffeShop({super.key});

  @override
  State<CoffeShop> createState() => _CoffeShopState();
}

class _CoffeShopState extends State<CoffeShop> {
  final List coffeTypes = [
    ['Cappucino', true],
    ['nes nes ', false],
    ['qahwa bchecelat', false],
    ['espreso', false],
  ];

  void coffeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeTypes.length; i++) {
        coffeTypes[i][1] = false;
      }
      coffeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar:
            BottomNavigationBar(backgroundColor: Colors.grey[800], items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              label: ""),
        ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(" FIND THE BEST COFFE FOR YOU",
                  style: TextStyle(
                      fontSize: 35, letterSpacing: 4, color: Colors.white)),
            ),
            SizedBox(
              height: 25,
            ),

            ///
            ///
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  hintText: 'Find your coffe',
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 194, 194, 194))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            )

            ///
            ///
            ///
            ,
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeTypes.length,
                itemBuilder: (BuildContext context, int index) {
                  return CoffeType(
                      coffeType: coffeTypes[index][0],
                      isSelected: coffeTypes[index][1],
                      onTap: () {
                        coffeTypeSelected(index);
                      });
                },
              ),
            )

            ///
            ///
            ///
            ,
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeTile(
                  coffeName: 'latte',
                  imagePath: 'assets/coffeone.jpg',
                  price: '8',
                ),
                CoffeTile(
                  coffeName: 'espresso',
                  imagePath: 'assets/coffetwo.jpg',
                  price: '5',
                ),
                CoffeTile(
                  coffeName: 'latte',
                  imagePath: 'assets/coffeone.jpg',
                  price: '8',
                ),
                CoffeTile(
                  coffeName: 'espresso',
                  imagePath: 'assets/coffetwo.jpg',
                  price: '5',
                ),
              ],
            ))
          ],
        ));
  }
}
