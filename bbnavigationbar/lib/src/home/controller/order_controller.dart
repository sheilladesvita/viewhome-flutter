import 'package:bbnavigationbar/src/model.dart';
import 'package:bbnavigationbar/src/controller.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class OrderController extends ControllerMVC {
  List<MenuModel> getMenuList(String idTenan) {
    List<MenuModel> output = [];
    MenuModel.orderMenuList(idTenan).then((menu) {
      for (int i = 0; i < menu.length; i++) 
        output.add(menu[i]);

      setState(() {});
    });

    return(output);
  }

  List<TenanModel> getTenanList() {
    List<TenanModel> output = [];
    TenanModel.getTenanList().then((tenan) {
      for (int i = 0; i < tenan.length; i++) 
        output.add(tenan[i]);

      setState(() {});
    });

    return(output);
  }

  List<TenanModel> getTenanById(String idTenan) {
    List<TenanModel> output = [];
    TenanModel.getTenanById(idTenan).then((tenan) {
      for (int i = 0; i < tenan.length; i++) 
        output.add(tenan[i]);

      setState(() {});
    });

    return(output);
  }

  bool checkCart(List<DetailPemesananModel> cart, String idMenu) {
    bool check = false;

    for(int i = 0; i < cart.length; i++)
      if(cart[i].menu.id == idMenu)
        check = true;

    return check;
  }

  DetailPemesananModel setDetail(MenuModel menu) {
    DetailPemesananModel pesanan = new DetailPemesananModel();
    pesanan.hargaMenu = menu.harga;
    pesanan.qtyMenu = 1;
    pesanan.keterangan = "";
    pesanan.menuPemesanan = menu;
    // pesanan.idPesanan = "";
    return pesanan;
  }

  int sumQty (int qty) {
    qty = qty+1;
    return qty;
  }

  int minQty (int qty) {
    qty = qty - 1;
    return qty;
  }

  int getTotalBayar(List<DetailPemesananModel> cart) {
    int total = 0;

    for(int i = 0; i < cart.length; i++)
      total = total + (cart[i].harga*cart[i].qty);

    return total;
  }

  int getCartById(List<DetailPemesananModel> cart, String idMenu) {
    int check = 0;

    for(int i = 0; i < cart.length; i++)
      if(cart[i].menu.id == idMenu)
        check = i;

    return check;
  }

  void printScreen(GlobalKey<State<StatefulWidget>> _printKey) {
    Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async {
        final doc = pw.Document();

        final image = await wrapWidget(
          doc.document,
          key: _printKey,
          pixelRatio: 2.0
        );

        doc.addPage(
          pw.Page(
            pageFormat: format,
            build: (pw.Context context) {
              return pw.Center(child: pw.Expanded(child: pw.Image(image),),);
            }
          )
        );
        return doc.save();
      }
    );
  }
}