import 'package:flutter/material.dart';
import 'package:flutter_of_legends/widgets/widgets.dart';
// ignore_for_file: prefer_const_constructors

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> hoverAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    hoverAnimation = Tween(begin: Offset(0, 0), end: Offset(0, 0.027))
        .animate(animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideTransition(
          position: hoverAnimation,
          child: Transform.translate(
            offset: Offset(0, -6),
            child: Image(
              height: 240,
              image: AssetImage('assets/cover1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        MyGridView(),
      ],
    );
  }
}
