import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:bbnavigationbar/src/model.dart';

class DetailPemesananModel {
  int harga;
  int qty;
  String keterangan;
  MenuModel menu;
  // String idPemesanan;

  int get hargaMenu {
    return harga;
  }

  void set hargaMenu(int _harga) {
    harga = _harga;
  }

  int get qtyMenu {
    return qty;
  }

  void set qtyMenu(int _qty) {
    qty = _qty;
  }

  String get keteranganPemesanan {
    return keterangan;
  }

  void set keteranganPemesanan(String _keterangan) {
    keterangan = _keterangan;
  }

  MenuModel get menuPemesanan {
    return menu;
  }

  void set menuPemesanan(MenuModel _menu) {
    menu = _menu;
  }

  // String get idPesanan {
  //   return idPemesanan;
  // }

  // void set idPesanan(String _idPemesanan) {
  //   idPemesanan = _idPemesanan;
  // }

  DetailPemesananModel({this.harga, this.qty, this.keterangan, this.menu});

  // factory DetailPemesananModel.setDetailPemesanan(Map<int, dynamic> object) {
  //   return DetailPemesananModel(
  //       id: object['id'],
  //       harga: object['harga'],
  //       qty: object['qty'],
  //       menu: object['id'],
  //       idPemesanan: object['id']
  //     );
  // }

  // static Future<List<DetailPemesananModel>> getDetailPemesanan(int id) async {
  //   String apiURL = "http://192.168.43.56:8888/detail_pemesanan";

  //   var apiResult = await http.get(apiURL);
  //   var jsonObject = json.decode(apiResult.body);
  //   List<dynamic> listDetailPemesanan = (jsonObject as Map<int, dynamic>)['menu']['pemesanan'];

  //   List<DetailPemesananModel> detailPemesanan = [];
  //   for (int i = 0; i < listDetailPemesanan.length; i++)
  //     detailPemesanan.add(DetailPemesananModel.setDetailPemesanan(listDetailPemesanan[i]));

  //   return detailPemesanan;
  // } 
}