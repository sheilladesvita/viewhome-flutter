import 'package:aqueduct/aqueduct.dart';
import 'package:server/server.dart';
import 'package:server/model/pengelola.dart';
import 'package:server/model/pengguna.dart';

class PengelolaController extends ResourceController {
  PengelolaController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllPengelola() async {
    final pengelolaQuery = Query<Pengelola>(context);
    final pengelola = await pengelolaQuery.fetch();

    return Response.ok(pengelola);
  }

  @Operation.get('username')
  Future<Response> getPengelolaById(@Bind.path('username') String username) async {
    final pengelolaQuery = Query<Pengelola>(context)..where((h) => h.username).equalTo(username);
    final pengelola = await pengelolaQuery.fetchOne();
    if(pengelola == null) {
      return Response.notFound();
    }
    return Response.ok(pengelola);
  }

  @Operation.post()
  Future<Response> createPengelola(@Bind.body() Pengelola inputPengelola) async {
    final query = Query<Pengelola>(context)..values = inputPengelola;
    final insertedPengelola = await query.insert();
    return Response.ok(insertedPengelola);
  }

  @Operation.delete('username')
  Future<Response> deletePengelolaById(@Bind.path('username') String username) async {
    final pengelolaQuery = Query<Pengelola>(context)..where((h) => h.username).equalTo(username);
    final pengelola = await pengelolaQuery.delete();
    if(pengelola == null) {
      return Response.notFound();
    }

    return Response.ok(pengelola);
  }

  @Operation.put('username')
  Future<Response> updatePengelolaById(@Bind.path('username') String username, @Bind.body() Pengelola inputPengelola) async {
    final pengelolaQuery = Query<Pengelola>(context)
      ..where((h) => h.username).equalTo(username)
      ..values = inputPengelola;
    final pengelola = await pengelolaQuery.updateOne();
    if (pengelola == null) {
      return Response.notFound();
    }
    return Response.ok(pengelola);
  }
}