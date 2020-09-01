import 'package:aqueduct/aqueduct.dart';
import 'package:server/server.dart';
import 'package:server/model/menu.dart';

class MenuController extends ResourceController {
  MenuController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllMenu() async {
    final menuQuery = Query<Menu>(context);
    final menu = await menuQuery.fetch();

    return Response.ok(menu);
  }

  @Operation.get('id')
  Future<Response> getMenuById(@Bind.path('id') String id) async {
    final menuQuery = Query<Menu>(context)..where((h) => h.id).equalTo(id);
    final menu = await menuQuery.fetchOne();
    if(menu == null) {
      return Response.notFound();
    }
    return Response.ok(menu);
  }

  @Operation.post()
  Future<Response> createMenu(@Bind.body() Menu inputMenu) async {
    final query = Query<Menu>(context)..values = inputMenu;
    final insertedMenu = await query.insert();
    return Response.ok(insertedMenu);
  }

  @Operation.delete('id')
  Future<Response> deleteMenuById(@Bind.path('id') String id) async {
    final menuQuery = Query<Menu>(context)..where((h) => h.id).equalTo(id);
    final menu = await menuQuery.delete();
    if(menu == null) {
      return Response.notFound();
    }

    return Response.ok(menu);
  }

  @Operation.put('id')
  Future<Response> updateMenuById(@Bind.path('id') String id, @Bind.body() Menu inputMenu) async {
    final menuQuery = Query<Menu>(context)
      ..where((h) => h.id).equalTo(id)
      ..values = inputMenu;
    final menu = await menuQuery.updateOne();
    if (menu == null) {
      return Response.notFound();
    }
    return Response.ok(menu);
  }
}