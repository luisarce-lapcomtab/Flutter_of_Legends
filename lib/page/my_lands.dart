import 'package:flutter/material.dart';
import 'package:flutter_of_legends/widgets/widgets.dart';
// ignore_for_file: prefer_const_constructors

class LandsPage extends StatefulWidget {
  const LandsPage({super.key});

  @override
  State<LandsPage> createState() => _LandsPageState();
}

class _LandsPageState extends State<LandsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 500,
      width: 250,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: const [Colors.brown, Color.fromARGB(199, 255, 255, 255)]),
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(220, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              spreadRadius: 1,
              blurRadius: 8,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BadgeWidget(),
          Center(
            child: const Image(
              height: 220,
              image: AssetImage('assets/desert.png'),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -30),
            child: Opacity(
              opacity: 0.75,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        width: 7,
                        color: Colors.amber,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Desert',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            ' Mine Class',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(child: Container()),
          BtnMining(),
        ],
      ),
    );
  }
}

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Center(
        child: Text(
          'FREE',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
