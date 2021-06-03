import 'package:designstructs/ana_sayfa.dart';
import 'package:designstructs/arama_sayfasi.dart';
import 'package:designstructs/drawer_menu.dart';
import 'package:designstructs/kisisel_font_kullanimi.dart';
import 'package:designstructs/page_view.dart';
import 'package:designstructs/tab_ornek.dart';
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
        fontFamily: 'Regular',
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  int secilenMenuItem=0;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> tumSayfalar;
  AnaSayfa sayfaAna;
  AramaSayfasi sayfaAra;
  PageViewOrnek pageViewOrnek;
  
  // sayfalardaki durum kontrolü için key
  var keyAnaSayfa =PageStorageKey("key_ana_sayfa");
  var keyAramaSayfa = PageStorageKey("key_arama_sayfa");

  @override
  void initState() {

    sayfaAna=AnaSayfa(keyAnaSayfa);
    sayfaAra=AramaSayfasi(keyAramaSayfa);
    pageViewOrnek=PageViewOrnek();
    tumSayfalar=[sayfaAna,sayfaAra,pageViewOrnek];

    super.initState();
  }

  void _menuCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: //KisiselFont(),
            widget.secilenMenuItem <= tumSayfalar.length-1 ?
            tumSayfalar[widget.secilenMenuItem] : tumSayfalar[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
        //canvasColor: Colors.deepOrange,
        //primaryColor: Colors.yellow,
      ),
      child: BottomNavigationBar(
        //backgroundColor: Colors.indigo,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Anasayfa",backgroundColor: Colors.yellow, activeIcon: Icon(Icons.home_work_outlined)),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Ara",backgroundColor: Colors.deepOrange),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "Ekle",backgroundColor: Colors.teal),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label: "Profil",backgroundColor: Colors.lime),
      ],
        //type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        currentIndex: widget.secilenMenuItem,
        onTap: (index) {
        setState(() {
          widget.secilenMenuItem = index;
          if(index == 3) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabOrnek())).then((bb) {
              widget.secilenMenuItem = 0;
            });
          }
        });
        },
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
