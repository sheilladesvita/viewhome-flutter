import 'package:aqueduct/aqueduct.dart';
import 'package:server/server.dart';
import 'package:server/model/tenan.dart';

class TenanController extends ResourceController {
  TenanController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllTenan() async {
    final tenanQuery = Query<Tenan>(context);
    final tenan = await tenanQuery.fetch();

    return Response.ok(tenan);
  }

  @Operation.get('username')
  Future<Response> getTenanById(@Bind.path('username') String username) async {
    final tenanQuery = Query<Tenan>(context)..where((h) => h.username).equalTo(username);
    final tenan = await tenanQuery.fetchOne();
    if(tenan == null) {
      return Response.notFound();
    }
    return Response.ok(tenan);
  }

  @Operation.post()
  Future<Response> createTenan(@Bind.body() Tenan inputTenan) async {
    final query = Query<Tenan>(context)..values = inputTenan;
    final insertedTenan = await query.insert();
    return Response.ok(insertedTenan);
  }

  @Operation.delete('username')
  Future<Response> deleteTenanById(@Bind.path('username') String username) async {
    final tenanQuery = Query<Tenan>(context)..where((h) => h.username).equalTo(username);
    final tenan = await tenanQuery.delete();
    if(tenan == null) {
      return Response.notFound();
    }

    return Response.ok(tenan);
  }

  @Operation.put('username')
  Future<Response> updateTenanById(@Bind.path('username') String username, @Bind.body() Tenan inputTenan) async {
    final tenanQuery = Query<Tenan>(context)
      ..where((h) => h.username).equalTo(username)
      ..values = inputTenan;
    final tenan = await tenanQuery.updateOne();
    if (tenan == null) {
      return Response.notFound();
    }
    return Response.ok(tenan);
  }
}