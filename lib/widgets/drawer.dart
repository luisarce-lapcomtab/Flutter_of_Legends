// ignore_for_file: use_build_context_synchronously

part of 'widgets.dart';
// ignore_for_file: prefer_const_constructors

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Account 1',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text('0xa65A3...302D',
                style: TextStyle(
                  fontSize: 15,
                )),
            decoration: BoxDecoration(
              color: Color.fromARGB(226, 26, 26, 26),
            ),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: const Image(
                image: AssetImage('assets/logo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: const Text("Account"),
            leading: Icon(Icons.person),
            onTap: () async {
              await Future.delayed(const Duration(milliseconds: 200),
                  () => Navigator.pop(context));
              Navigator.pushNamed(context, "account");
            },
          ),
          ListTile(
            title: const Text("Market"),
            leading: Icon(Icons.shopify_sharp),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Notifications"),
            leading: Icon(Icons.notifications_active),
            onTap: () {},
            trailing: ClipOval(
                child: Container(
              color: Colors.blue,
              height: 20,
              width: 20,
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
          ),
          Divider(),
          ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () {}),
          ListTile(
            title: Text("Help"),
            leading: Icon(Icons.help),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
