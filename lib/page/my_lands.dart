import 'package:flutter/material.dart';
import 'package:flutter_of_legends/widgets/widgets.dart';
// ignore_for_file: prefer_const_constructors

class LandsPage extends StatefulWidget {
  const LandsPage({super.key});

  @override
  State<LandsPage> createState() => _LandsPageState();
}

class _LandsPageState extends State<LandsPage> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        AnimatedPositioned(
          right: 38,
          duration: Duration(milliseconds: 500),
          child: InfoCurrentLand(),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 500),
          right: isExpanded ? 165 : 48,
          child: GestureDetector(
            onHorizontalDragUpdate: onHorizontalDragUpdate,
            onTap: () {},
            child: CurrentLand(),
          ),
        ),
      ],
    );
  }

  void onHorizontalDragUpdate(DragUpdateDetails details) {
    if (details.delta.dx < 0) {
      setState(() {
        isExpanded = true;
      });
    } else if (details.delta.dx > 0) {
      setState(() {
        isExpanded = false;
      });
    }
  }
}

class CurrentLand extends StatelessWidget {
  const CurrentLand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 230,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: const [Colors.brown, Colors.white]),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
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
              height: 210,
              image: AssetImage('assets/desert.png'),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -25),
            child: Opacity(
              opacity: 0.75,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  height: 80,
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

class InfoCurrentLand extends StatelessWidget {
  const InfoCurrentLand({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 46, right: 10),
      height: 500,
      width: 170,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 96, 125, 139),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 8,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Info',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(height: 18),
            Text(
              'Capacity',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              ' 18.00',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              'Daily Production',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              ' 18.00',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
