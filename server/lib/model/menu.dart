import 'package:server/server.dart';
import 'package:server/model/tenan.dart';
import 'package:server/model/detail.dart';

class Menu extends ManagedObject<_Menu> implements _Menu{}

@Table(name:"MENU")
class _Menu {
  @Column(primaryKey: true)
  String id;

  String nama;
  int harga;
  String gambar;
  
  @Relate(#menu)
  Tenan tenan;

  ManagedSet<Detail> detail;
}