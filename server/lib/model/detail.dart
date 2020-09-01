import 'package:server/server.dart';
import 'package:server/model/menu.dart';
import 'package:server/model/transaksi.dart';

class Detail extends ManagedObject<_Detail> implements _Detail{}

@Table(name:"DETAIL_TRANSAKSI")
class _Detail {
  // @Column(primaryKey: true)
  // String id;

  int harga;
  int qty;
  
  @Relate(#detail)
  Menu menu;

  @Relate(#detail)
  Transaksi transaksi;
  
}