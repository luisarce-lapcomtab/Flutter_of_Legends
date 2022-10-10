part of 'widgets.dart';
// ignore_for_file: prefer_const_constructors

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 34,
            splashRadius: 1,
            icon: const Icon(Icons.sort_rounded),
            onPressed: _openDrawer,
          ),
          BtnSearch(),
          Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white12, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: FlutterLogo(size: 35))
        ],
      ),
    );
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
}

class BtnSearch extends StatefulWidget {
  const BtnSearch({
    Key? key,
  }) : super(key: key);

  @override
  State<BtnSearch> createState() => _BtnSearchState();
}

class _BtnSearchState extends State<BtnSearch> {
  final double _minwidth = 45.0;

  late double _currentheight;

  @override
  void initState() {
    _currentheight = _minwidth;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double maxwidtht = MediaQuery.of(context).size.width / 1.6;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      margin: EdgeInsets.only(left: 8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white12, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      height: 45,
      width: _currentheight,
      child: IconButton(
        splashRadius: 1,
        icon: const Icon(
          Icons.search,
          size: 27,
        ),
        onPressed: () {
          if (_currentheight == _minwidth) {
            setState(() {
              _currentheight = maxwidtht;
            });
          } else {
            setState(() {
              _currentheight = _minwidth;
            });
          }
        },
      ),
    );
  }
}
