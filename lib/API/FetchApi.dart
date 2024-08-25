import 'package:flutter_project/model/ProductsModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class FetchApi {

  Future<List<ProductsModel>> fetchProducts() async {
    
    final response = await http.get(Uri.parse("https://dummyjson.com/products/category/smartphones"));

    if(response.statusCode == 200){
      List<dynamic> data = json.decode(response.body)['products'];
      return data.map((json) => ProductsModel.fromJson(json)).toList();
    }else{
      throw Exception('Failed');
    }
  }

}