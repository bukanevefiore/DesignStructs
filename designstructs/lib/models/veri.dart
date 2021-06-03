
// Anasayfa için liste verileri
class Veri {
  String baslik;
  bool expanded;  // sayfaların durum kontrolü, sayfalar arası gidip geirken, nerde kaldıysan orda kalmanı sağlar
  String icerik;

  Veri(this.baslik,this.icerik,this.expanded);
}