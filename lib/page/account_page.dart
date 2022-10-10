import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    iconSize: 28,
                    splashRadius: 2,
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: (() => Navigator.pop(context))),
                IconButton(
                    iconSize: 27,
                    splashRadius: 2,
                    icon: const Icon(Icons.edit),
                    onPressed: () {}),
              ],
            ),
            AccountInfo(),
            Divider(color: Colors.white),
          ],
        ),
      )),
    );
  }
}

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: const Image(
                  image: AssetImage('assets/logo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Transform.translate(
                offset: Offset(-19, 0),
                child: Icon(
                  Icons.verified_user,
                  size: 25,
                  color: Color.fromARGB(255, 0, 161, 5),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Account 1',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            '0.015',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('0xa65A3...302D',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.content_copy,
                  size: 15,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
