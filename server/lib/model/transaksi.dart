import 'package:server/server.dart';
import 'package:server/model/kasir.dart';
import 'package:server/model/tenan.dart';
import 'package:server/model/detail.dart';

class Transaksi extends ManagedObject<_Transaksi> implements _Transaksi{}

@Table(name:"TRANSAKSI")
class _Transaksi {
  @Column(primaryKey: true)
  String id;

  @Column(indexed: true)
  DateTime tglPesan;

  @Column(indexed: true)
  DateTime tglBayar;

  String status;
  
  @Relate(#transaksi)
  Tenan tenan;

  @Relate(#transaksi)
  Kasir kasir;
  
  ManagedSet<Detail> detail;
}