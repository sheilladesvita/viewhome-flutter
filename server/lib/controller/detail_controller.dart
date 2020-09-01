import 'package:aqueduct/aqueduct.dart';
import 'package:server/server.dart';
import 'package:server/model/detail.dart';

class DetailController extends ResourceController {
  DetailController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllDetail() async {
    final detailQuery = Query<Detail>(context);
    final detail = await detailQuery.fetch();

    return Response.ok(detail);
  }

  // @Operation.get('id')
  // Future<Response> getDetailById(@Bind.path('id') String id) async {
  //   final detailQuery = Query<Detail>(context)..where((h) => h.id).equalTo(id);
  //   final detail = await detailQuery.fetchOne();
  //   if(detail == null) {
  //     return Response.notFound();
  //   }
  //   return Response.ok(detail);
  // }

  // @Operation.post()
  // Future<Response> createDetail(@Bind.body() Detail inputDetail) async {
  //   final query = Query<Detail>(context)..values = inputDetail;
  //   final insertedDetail = await query.insert();
  //   return Response.ok(insertedDetail);
  // }

  // @Operation.delete('id')
  // Future<Response> deleteDetailById(@Bind.path('id') String id) async {
  //   final detailQuery = Query<Detail>(context)..where((h) => h.id).equalTo(id);
  //   final detail = await detailQuery.delete();
  //   if(detail == null) {
  //     return Response.notFound();
  //   }

  //   return Response.ok(detail);
  // }

  // @Operation.put('id')
  // Future<Response> updateDetailById(@Bind.path('id') String id, @Bind.body() Detail inputDetail) async {
  //   final detailQuery = Query<Detail>(context)
  //     ..where((h) => h.id).equalTo(id)
  //     ..values = inputDetail;
  //   final detail = await detailQuery.updateOne();
  //   if (detail == null) {
  //     return Response.notFound();
  //   }
  //   return Response.ok(detail);
  // }
}