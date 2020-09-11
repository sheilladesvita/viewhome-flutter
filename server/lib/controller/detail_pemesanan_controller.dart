import 'package:aqueduct/aqueduct.dart';
import 'package:server/server.dart';
import 'package:server/model/detail_pemesanan.dart';

class DetailPemesananController extends ResourceController {
  DetailPemesananController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllDetailPemesanan() async {
    final detailQuery = Query<DetailPemesanan>(context);
    final detail = await detailQuery.fetch();

    return Response.ok(detail);
  }

  @Operation.get('id')
  Future<Response> getDetailPemesananById(@Bind.path('id') int id) async {
    final detailQuery = Query<DetailPemesanan>(context)..where((h) => h.id).equalTo(id);
    final detail = await detailQuery.fetchOne();
    if(detail == null) {
      return Response.notFound();
    }
    return Response.ok(detail);
  }
}