import 'package:server/server.dart';
import 'package:server/model/menu.dart';
import 'package:server/model/transaksi.dart';

class Tenan extends ManagedObject<_Tenan> implements _Tenan{}

@Table(name:"TENAN")
class _Tenan {
  @Column(primaryKey: true)
  String username;

  String nama;
  String alamat;
  String no_telp;

  ManagedSet<Menu> menu;
  ManagedSet<Transaksi> transaksi;
}