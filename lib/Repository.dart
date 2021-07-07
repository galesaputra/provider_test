import 'dart:io';

import 'package:api_app/cart_c.dart';
import 'package:api_app/main.dart';
import 'package:dio/dio.dart';
import 'package:api_app/localStorage/moor_database.dart';
import 'package:moor_flutter/moor_flutter.dart';

class Repository {
  Repository._privateConstructor();
  static final Repository _instance = Repository._privateConstructor();

  factory Repository() {
    return _instance;
  }

  Future<List<Cart_c>> getCart() async {
    List<Cart_c> array_cart = [];
    try {
      var res = await Dio().post('https://ranting.twisdev.com/index.php/rest/items/search/api_key/teampsisthebest/');
      var carts = res.data;
      print(carts);
      // List<Cart_c> array_cart = [];
      for( var i = 0 ; i < carts.length; i++ ) {
        var cart_obj_from_json = Cart_c.fromJson(carts[i]);
        array_cart.add(cart_obj_from_json);
      }
      return array_cart;
    } on DioError  catch (ex) {
      if(ex.type == DioErrorType.receiveTimeout){
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }

  Future<bool> insertCart(Cart_c cart) async {
    var img_Path;
    print(cart.foto);
    // if(cart.foto == null){
    //   img_Path = "https://i.pinimg.com/originals/65/25/a0/6525a08f1df98a2e3a545fe2ace4be47.jpg";
    // }else{
    //   img_Path = "https://ranting.twisdev.com/uploads/${cart.foto}";
    // }
    print("btas");
    print(img_Path);
    db.tambahNewCart(Cart(id: cart.id, name: cart.title, qty: int.parse("1"), price: cart.price, img_path: cart.foto,
    description: cart.description, username: cart.username, location_name: cart.location_name, halal: cart.halal,
        is_sold_out: cart.is_sold_out, weight: cart.weight, item_condition: cart.item_condition));
    print("berhasil");
  }

  Future<bool> updateCart(int id_cart, int qty) async {
    db.ubahNewCart(CartsCompanion(id_cart: Value(id_cart), qty: Value(qty)));
  }

  Future<List<Cart>> showCart() async {
    return db.ambilAllCart();
  }

  Stream<List<Cart>> getTotal() {
    return db.getTotal();
  }

  Stream<List<Cart>> getCartCount() {
    return db.getTotal();
  }

}