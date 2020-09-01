import 'package:aqueduct/aqueduct.dart';
import 'package:server/server.dart';
import 'package:server/model/transaksi.dart';

class TransaksiController extends ResourceController {
  TransaksiController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllTransaksi() async {
    final transaksiQuery = Query<Transaksi>(context);
    final transaksi = await transaksiQuery.fetch();

    return Response.ok(transaksi);
  }

  @Operation.get('id')
  Future<Response> getTransaksiById(@Bind.path('id') String id) async {
    final transaksiQuery = Query<Transaksi>(context)..where((h) => h.id).equalTo(id);
    final transaksi = await transaksiQuery.fetchOne();
    if(transaksi == null) {
      return Response.notFound();
    }
    return Response.ok(transaksi);
  }

  @Operation.post()
  Future<Response> createTransaksi(@Bind.body() Transaksi inputTransaksi) async {
    final query = Query<Transaksi>(context)..values = inputTransaksi;
    final insertedTransaksi = await query.insert();
    return Response.ok(insertedTransaksi);
  }

  @Operation.delete('id')
  Future<Response> deleteTransaksiById(@Bind.path('id') String id) async {
    final transaksiQuery = Query<Transaksi>(context)..where((h) => h.id).equalTo(id);
    final transaksi = await transaksiQuery.delete();
    if(transaksi == null) {
      return Response.notFound();
    }

    return Response.ok(transaksi);
  }

  @Operation.put('id')
  Future<Response> updateTransaksiById(@Bind.path('id') String id, @Bind.body() Transaksi inputTransaksi) async {
    final transaksiQuery = Query<Transaksi>(context)
      ..where((h) => h.id).equalTo(id)
      ..values = inputTransaksi;
    final transaksi = await transaksiQuery.updateOne();
    if (transaksi == null) {
      return Response.notFound();
    }
    return Response.ok(transaksi);
  }
}