import 'package:server/server.dart';

// enum UserType {
//   pengelola, tenan, kasir
// }

class Pengguna extends ManagedObject<_Pengguna> implements _Pengguna {}

@Table(name: "PENGGUNA")
class _Pengguna {
  @Column(primaryKey: true)
  String username;

  String password;
  String role;
}