import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController = PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatayEksen = true;
  bool pageSnapping=true;
  bool reverseSira=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: myController,
            scrollDirection: yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: false,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("Gelen index $index");
            },
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.blue,
                child: Column(
                  children: [
                    Text(
                      "Sayfa 0",
                      style: TextStyle(fontSize: 25),
                    ),
                    RaisedButton(
                        child: Text("Sayfa 2 ye git"),
                        onPressed: () {
                      myController.jumpToPage(2);
                    })
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.yellow,
                child: Text(
                  "Sayfa 1",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.yellow,
                child: Text(
                  "Sayfa 2",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.pink,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Yatay Eksende kaydır"),
                      Checkbox(
                          value: yatayEksen,
                          onChanged: (b) {
                            setState(() {
                              yatayEksen=b;
                            });
                          },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Page Snapping"),
                      Checkbox(
                        value: pageSnapping,
                        onChanged: (b) {
                          setState(() {
                            pageSnapping=b;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Reverse Sıra"),
                      Checkbox(
                        value: reverseSira,
                        onChanged: (b) {
                          setState(() {
                            reverseSira=b;
                          });
                        },
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
