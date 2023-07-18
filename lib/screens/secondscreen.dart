import 'package:flutter/material.dart';

void main() {
  runApp(mailapp());
}

class mailapp extends StatefulWidget {
  const mailapp({super.key});

  @override
  State<mailapp> createState() => _mailappState();
}

class _mailappState extends State<mailapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HMail",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hmail"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        drawer: Drawer(
          elevation: 10,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Harish"),
                accountEmail: Text("harish18092002@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text("H"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("A"),
                  )
                ],
              ),
              ListTile(
                title: Text("All Inbox"),
                leading: Icon(Icons.mail),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text("Primary"),
                leading: Icon(Icons.inbox),
              ),
              Divider(
                height: 10,
                color: (Colors.red),
              ),
              ListTile(
                title: Text("People"),
                leading: Icon(Icons.people),
              ),
              Divider(
                height: 10,
                color: (Colors.red),
              ),
              ListTile(
                title: Text("Promotions"),
                leading: Icon(Icons.local_offer),
              ),
              Divider(
                height: 10,
                color: (Colors.red),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
