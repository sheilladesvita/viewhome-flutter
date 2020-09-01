import 'package:server/server.dart';
// import 'package:server/model/transaksi.dart';

class Kasir extends ManagedObject<_Kasir> implements _Kasir{}

@Table(name:"KASIR")
class _Kasir {
  @Column(primaryKey: true)
  String username;

  String nama;
  String alamat;
  String no_telp;
  
  // ManagedSet<Transaksi> transaksi;
}