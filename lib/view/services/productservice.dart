import 'dart:convert';
import 'package:flutter_project/view/models/productmodel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_project/view/url/storeurl.dart';



class ProductService {
    static String baseUrl = 'https://fakestoreapi.com/products'; 

    // Fetch all products
    Future<List<ProductModel>> getAllProducts() async {
        final response = await http.get(Uri.parse(baseUrl),headers: <String,String>{
          'Content-Type':'application/x-www-form-urlencoded',
        });
        
        if (response.statusCode == 200) {
            List<dynamic> jsonData = json.decode(response.body);
            return jsonData.map((json) => ProductModel.fromJson(json)).toList();
        } else {
            throw Exception('Failed to load products');
        }
    }

    // Fetch a product by ID
    Future<ProductModel> getProductById(int id) async {
        final response = await http.get(Uri.parse('$baseUrl/$id'));
        
        if (response.statusCode == 200) {
            return ProductModel.fromJson(json.decode(response.body));
        } else {
            throw Exception('Failed to load product');
        }
    }
}

Future<List<ProductModel>> getAllProducts() async {
        final response = await http.get(Uri.parse(ProductService.baseUrl),headers: <String,String>{
          'Content-Type':'application/x-www-form-urlencoded',
        });
        
        if (response.statusCode == 200) {
            List<dynamic> jsonData = json.decode(response.body);
            return jsonData.map((json) => ProductModel.fromJson(json)).toList();
        } else {
            throw Exception('Failed to load products');
        }
    }
