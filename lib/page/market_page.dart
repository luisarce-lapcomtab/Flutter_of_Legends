import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: const [
          TabBar(
              isScrollable: true,
              indicator: BoxDecoration(),
              labelStyle: TextStyle(),
              labelPadding: EdgeInsets.symmetric(horizontal: 20),
              tabs: [
                Tab(text: 'Desert'),
                Tab(text: 'Common'),
                Tab(text: 'Rare'),
                Tab(text: 'Legendary'),
              ]),
          Flexible(
            flex: 1,
            child: TabBarView(children: [
              StoreItems(
                image: 'assets/desert.png',
                type: 'Desert',
                badge: 'FREE',
                color: Colors.green,
              ),
              StoreItems(
                image: 'assets/common.png',
                type: 'Cammon',
                badge: '-5%',
                color: Color.fromARGB(255, 113, 119, 151),
              ),
              StoreItems(
                image: 'assets/rare.png',
                type: 'Rare',
                badge: '-10%',
                color: Color.fromARGB(198, 207, 27, 153),
              ),
              StoreItems(
                image: 'assets/legendary.png',
                type: 'Legendary',
                badge: '-15%',
                color: Color.fromARGB(216, 124, 52, 218),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class StoreItems extends StatelessWidget {
  final String image;
  final String type;
  final String badge;
  final Color color;

  const StoreItems(
      {super.key,
      required this.image,
      required this.type,
      required this.badge,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.7,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: const [
                  Colors.brown,
                  Color.fromARGB(199, 255, 255, 255)
                ]),
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
                Container(
                  margin: EdgeInsets.all(8),
                  height: 22.5,
                  width: 45,
                  decoration: BoxDecoration(
                      color: color,
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Text(
                      badge,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Image(
                    height: 118,
                    image: AssetImage(image),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -15),
                  child: Opacity(
                    opacity: 0.6,
                    child: Container(
                        height: 47,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              width: 6,
                              color: Colors.amber,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  type,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Mine Class',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
                NewBtnBuy()
              ],
            ),
          )
      ],
    );
  }
}

class NewBtnBuy extends StatelessWidget {
  const NewBtnBuy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
            minimumSize: Size(100, 26),
            backgroundColor: Colors.black54,
            elevation: 2,
            shape: const StadiumBorder()),
        child: Text('Buy'),
      ),
    );
  }
}
