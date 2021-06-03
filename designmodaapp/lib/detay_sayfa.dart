import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {

  var imgPath;
  DetaySayfa({this.imgPath});

  @override
  _DetaySayfaState createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(image: AssetImage('assets/dress.jpg'),
                              fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("LAMINATED", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Louis vuitton", style: TextStyle(fontSize: 16, color: Colors.grey),),
                            SizedBox(height: 5,),
                            Container(
                              height: 40,
                              width: (MediaQuery.of(context).size.width-170),
                              child: Text("One button V-neck sling long-sleeved waist female stitching dress",
                                style: TextStyle(fontSize: 13, color: Colors.grey),),
                            ),
                            SizedBox(height: 5,),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18,bottom: 8,top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$6500",style: TextStyle(fontSize: 22),),
                         FloatingActionButton(
                           onPressed: () {},
                              child: Icon(Icons.arrow_forward_ios),
                              backgroundColor: Colors.brown,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height)/2,
            left: 80,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(child: Text("LAMINATED",style: TextStyle(color: Colors.white),)),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
