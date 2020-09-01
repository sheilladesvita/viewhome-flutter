import 'package:server/server.dart';

class Pengelola extends ManagedObject<_Pengelola> implements _Pengelola{}

@Table(name:"PENGELOLA")
class _Pengelola {
  @Column(primaryKey: true)
  String username;

  String nama;
  String alamat;
  String no_telp;
}