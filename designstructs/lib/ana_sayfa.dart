import 'package:designstructs/models/veri.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key:k);


  // bu sayfada dolaştıktan sonra başka sayfaya geçsek bile geri döndüğümüzde aynı yerden devam etmeyi sağlayacak sınıf List yapıyoruz
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Veri> tumVeriler;

  @override
  void initState() {
    super.initState();

    tumVeriler=[
      Veri("Biz Kimiz", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Biz Neredeyiz", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Vizyon", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Misyon", "Biz kimizin içeriği buraya gelecek",false),
      Veri("İletişim ", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Hakkımızda", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Biz Kimiz", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Biz Neredeyiz", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Vizyon", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Misyon", "Biz kimizin içeriği buraya gelecek",false),
      Veri("İletişim ", "Biz kimizin içeriği buraya gelecek",false),
      Veri("Hakkımızda", "Biz kimizin içeriği buraya gelecek",false),

    ];

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemBuilder: (context, index) {

      return ExpansionTile(
        key: PageStorageKey("$index"),
        title: Text(tumVeriler[index].baslik),
      initiallyExpanded: tumVeriler[index].expanded,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(tumVeriler[index].icerik),
          ),
          color: index % 2 == 0 ? Colors.red.shade300 : Colors.blue.shade200,
          height: 100,
          width: double.infinity, // tum alanı kapla
        ),
      ],);
    },
      itemCount: tumVeriler.length,
    );
  }
}
