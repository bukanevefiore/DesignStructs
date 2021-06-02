import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),

    );
  }

  showAlertDialog(BuildContext context) {

    Widget okButton=FlatButton(onPressed: () {}, child: Text("Ok"));

    AlertDialog alert=AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    showDialog(context: context,
        builder: (BuildContext context){
      return alert;
        }
    );
  }
}
