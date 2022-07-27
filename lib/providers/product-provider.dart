import 'package:flutter/material.dart';
import 'package:furniture_app/models/product-model.dart';
import 'package:furniture_app/services/product-service.dart';

class ProductProvider with ChangeNotifier{
  List<ProductModel> _product = [];

  List<ProductModel> get product => _product;

  set product(List<ProductModel> product){
    _product = product;
    notifyListeners();
  }

  Future<void> getProduct() async {
    try {
      List<ProductModel> product = await ProductServices().getProduct();
      _product = product;
    } catch (e) {
      // print(e);
    }
  }
}