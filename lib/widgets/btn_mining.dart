part of 'widgets.dart';
// ignore_for_file: prefer_const_constructors

class BtnMining extends StatelessWidget {
  const BtnMining({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(22),
      decoration: BoxDecoration(
          color: Color.fromARGB(213, 0, 0, 0),
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Mining(),
          SizedBox(width: 10),
          Text(
            'Mining ...',
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}

class Mining extends StatefulWidget {
  const Mining({super.key});

  @override
  State<Mining> createState() => _MiningState();
}

class _MiningState extends State<Mining> with SingleTickerProviderStateMixin {
  late AnimationController _animationCtrl;

  @override
  void initState() {
    _animationCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animationCtrl.repeat();

    super.initState();
  }

  @override
  void dispose() {
    _animationCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationCtrl,
      child: const Icon(
        Icons.settings,
        color: Colors.white,
      ),
      builder: (context, child) {
        return Transform.rotate(
          angle: _animationCtrl.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }
}
