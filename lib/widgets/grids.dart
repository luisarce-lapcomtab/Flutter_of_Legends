part of 'widgets.dart';
// ignore_for_file: prefer_const_constructors

class MyGridView extends StatefulWidget {
  const MyGridView({
    Key? key,
  }) : super(key: key);

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -60),
      child: SizedBox(
        height: 350,
        child: GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 1.25,
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          padding: EdgeInsets.all(10.0),
          children: const [
            NewGrid(
              icon: Icons.home,
              title: 'My Asset',
              placerholder: 'Manage all your assets in one place',
              color: Color.fromARGB(255, 0, 110, 201),
            ),
            NewGrid(
              icon: Icons.download,
              title: 'Withdraw',
              placerholder: 'Withdraw NFTs from game',
              color: Color.fromARGB(255, 74, 177, 127),
            ),
            NewGrid(
              icon: Icons.upload,
              title: 'Deposit',
              placerholder: 'Deposit NFTs into game',
              color: Color.fromARGB(230, 231, 178, 108),
            ),
            NewGrid(
              icon: Icons.sync_alt_outlined,
              title: 'Pending Withd..',
              placerholder: 'All your pending withdrawal requests',
              color: Color.fromARGB(223, 116, 127, 190),
            ),
          ],
        ),
      ),
    );
  }
}

class NewGrid extends StatelessWidget {
  final String title;
  final String placerholder;
  final IconData icon;
  final Color color;

  const NewGrid({
    Key? key,
    required this.icon,
    required this.title,
    required this.placerholder,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color,
          //  border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 5),
                blurRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.white),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            placerholder,
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
