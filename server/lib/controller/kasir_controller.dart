import 'package:aqueduct/aqueduct.dart';
import 'package:server/server.dart';
import 'package:server/model/kasir.dart';
import 'package:server/model/pengguna.dart';

class KasirController extends ResourceController {
  KasirController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllKasir() async {
    final kasirQuery = Query<Kasir>(context);
    final kasir = await kasirQuery.fetch();

    return Response.ok(kasir);
  }

  @Operation.get('username')
  Future<Response> getKasirById(@Bind.path('username') String username) async {
    final kasirQuery = Query<Kasir>(context)..where((h) => h.username).equalTo(username);
    final kasir = await kasirQuery.fetchOne();
    if(kasir == null) {
      return Response.notFound();
    }
    return Response.ok(kasir);
  }

  @Operation.post()
  Future<Response> createKasir(@Bind.body() Kasir inputKasir) async {
    final query = Query<Kasir>(context)..values = inputKasir;
    final insertedKasir = await query.insert();
    return Response.ok(insertedKasir);
  }

  @Operation.delete('username')
  Future<Response> deleteKasirById(@Bind.path('username') String username) async {
    final kasirQuery = Query<Kasir>(context)..where((h) => h.username).equalTo(username);
    final kasir = await kasirQuery.delete();
    if(kasir == null) {
      return Response.notFound();
    }

    return Response.ok(kasir);
  }

  @Operation.put('username')
  Future<Response> updateKasirById(@Bind.path('username') String username, @Bind.body() Kasir inputKasir) async {
    final kasirQuery = Query<Kasir>(context)
      ..where((h) => h.username).equalTo(username)
      ..values = inputKasir;
    final kasir = await kasirQuery.updateOne();
    if (kasir == null) {
      return Response.notFound();
    }
    return Response.ok(kasir);
  }
}