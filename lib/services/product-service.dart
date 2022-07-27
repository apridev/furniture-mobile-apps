import 'dart:convert';

import 'package:furniture_app/models/product-model.dart';
import 'package:http/http.dart' as http;

class ProductServices{

  Uri url = Uri.parse("http://192.168.1.3:3000/api/v1/players/landingpage");

  Future <List<ProductModel>> getProduct() async {

    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers,);

    print(response.body);

    if(response.statusCode == 200){
      List data = jsonDecode(response.body)['data'];
      List<ProductModel> product = [];

      for(var item in data){
        product.add(ProductModel.fromJson(item));
      }

      return product;
    } else{
      throw Exception('Gagal Menambahkan Poduk');
    }
  }
}