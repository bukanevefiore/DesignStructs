import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("flutter"), accountEmail: Text("flutter@gmail.com"),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.account_circle_sharp,),),
            otherAccountsPictures: [
              CircleAvatar(backgroundColor: Colors.white,child: Text("AB")),
              CircleAvatar(backgroundColor: Colors.white,child: Text("CD")),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                InkWell(
                    onTap: () {

                    },
                    splashColor: Colors.indigoAccent,
                    child: ListTile(leading: Icon(Icons.home,color: Colors.blue,), title: Text("Ana Sayfa"),trailing: Icon(Icons.keyboard_arrow_right),)),
                InkWell(
                    onTap: () {},
                    child: ListTile(leading: Icon(Icons.call,color: Colors.blue,),title: Text("Ara"),trailing: Icon(Icons.keyboard_arrow_right),)),
                Divider(),
                InkWell(
                    onTap: () {},
                    child: ListTile(leading: Icon(Icons.account_box,color: Colors.blue,),title: Text("Profil"),trailing: Icon(Icons.keyboard_arrow_right),)),
                AboutListTile(
                  applicationIcon: Icon(Icons.save,color: Colors.blue,),
                  applicationName: "Flutter",
                  applicationVersion: "3.0",
                  child: Text("Abou Us"),
                  icon: Icon(Icons.keyboard),
                  aboutBoxChildren: [
                    Text("1"),
                    Text("2"),
                    Text("3"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
