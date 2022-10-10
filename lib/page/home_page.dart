import 'package:flutter/material.dart';
import 'package:flutter_of_legends/widgets/widgets.dart';
// ignore_for_file: prefer_const_constructors

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //physics: const NeverScrollableScrollPhysics(),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Image(
            height: 240,
            image: AssetImage('assets/cover1.png'),
            fit: BoxFit.cover,
          ),
          MyGridView(),
          /*Transform.translate(
            offset: Offset(0, -55),
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      spreadRadius: 1,
                      blurRadius: 8,
                    )
                  ]),
            ),
          )*/
        ],
      ),
    );
  }
}
