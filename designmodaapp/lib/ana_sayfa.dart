import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  var title="Moda Application";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(title,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
        actions: [
          IconButton(icon: Icon(Icons.camera_alt), onPressed: null)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20),
        child: ListView(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemanlari('assets/model1.jpeg','assets/chanellogo.jpg'),
                  SizedBox(width: 30,),
                  listeElemanlari('assets/model2.jpeg','assets/louisvuitton.jpg'),
                  SizedBox(width: 30,),
                  listeElemanlari('assets/model3.jpeg','assets/chanellogo.jpg'),
                  SizedBox(width: 30,),
                  listeElemanlari('assets/model1.jpeg','assets/chanellogo.jpg'),
                  SizedBox(width: 30,),
                  SizedBox(width: 30,),
                  listeElemanlari('assets/model2.jpeg','assets/louisvuitton.jpg'),
                  SizedBox(width: 30,),
                  listeElemanlari('assets/model3.jpeg','assets/chanellogo.jpg'),
                  SizedBox(width: 30,),
                  listeElemanlari('assets/model1.jpeg','assets/chanellogo.jpg'),
                  SizedBox(width: 30,),
                  listeElemanlari('assets/model2.jpeg','assets/louisvuitton.jpg'),
                  SizedBox(width: 30,),
                  listeElemanlari('assets/model3.jpeg','assets/chanellogo.jpg'),
                ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(right: 22,left: 2,bottom: 10),
             child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  child: materialCardOgeleri(),
                ),
           ),
          ],
        ),
      ),
    );
  }



  Widget listeElemanlari(String imagePath, String logaPath) {

    return Column(
      children: [
        Stack(
          children: [
            // profil resimleri
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
              ),
            ),
            // profil resimlerinin iconları
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(logaPath),fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(child: Text("Fallow",style: TextStyle(color: Colors.white),)),
        ),
      ],
    );
  }

  Widget materialCardOgeleri() {
    return Container(

      height: 500,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('assets/model1.jpeg'),
                  fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: MediaQuery.of(context).size.width-170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Daisy",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                      SizedBox(width: 6,),
                      Text("34 mins ago",style: TextStyle(color: Colors.black26,fontSize: 12,fontWeight: FontWeight.bold),),
                    ],
                  )),
              Icon(Icons.more_vert,color: Colors.grey,),
            ],
          ),
          SizedBox(height: 10,),
          Text("This official website features a ribbed knit zipper jacket that is"
    "modern and stylish. It looks very temparament and is recommend to friends",style: TextStyle(fontSize: 13,color: Colors.grey),),
        SizedBox(height: 15,),
          // resimler
          Row(
            children: [
              Container(
                width: (MediaQuery.of(context).size.width-50) / 2,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: AssetImage('assets/modelgrid1.jpeg'),
                  fit: BoxFit.cover,),
                ),
              ),
              SizedBox(width: 10,),
              Column(
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width-125) / 2,
                      height: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage('assets/modelgrid2.jpeg'),
                        fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: (MediaQuery.of(context).size.width-125) / 2,
                      height: 95,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/modelgrid3.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(height: 10,),
          //  # ler
          Row(
            children: [
              Container(
                width: 120,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text("# Louis vuitton")),
              ),
              SizedBox(width: 10,),
              Container(
                width: 100,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text("# Cholei")),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Divider(height: 2,color: Colors.grey,),
          SizedBox(height: 20,),
          // beğenilerin bulunduğu en alt bar
          Row(
            children: [
              Icon(Icons.reply_rounded,color: Colors.brown.withOpacity(0.2),size: 30,),
              SizedBox(width: 5,),
              Text("1.7k",style: TextStyle(fontSize: 16,),),
              SizedBox(width: 15,),
              Icon(Icons.message,color: Colors.brown.withOpacity(0.2),size: 30,),
              SizedBox(width: 5,),
              Text("1000",style: TextStyle(fontSize: 16,),),

              Container(
                width: (MediaQuery.of(context).size.width-240),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite,color: Colors.red,size: 30,),
                    Text("12.5k",style: TextStyle(fontSize: 16,),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
