import 'package:api_app/localStorage/moor_database.dart';
import 'package:flutter/cupertino.dart';

import '../Repository.dart';
import '../cart_c.dart';
import '../main.dart';

class CartState with ChangeNotifier {
  List<Cart_c> carts;
  List<Cart> cartsList = [];
  int isLoading = 1;
  int cartCount = 0;
  int totalDb = 0;

  void getCart4Grid() async {
    Repository().getCart().then((response){
      isLoading = 2;
      carts = response;
      notifyListeners();
    },
    onError: (exception){
      if(exception.message != null ){
        isLoading = 3;
        notifyListeners();
      }
    });
  }

  void insertCart(index) {
    Repository().insertCart(index);
    // cartCount++;
    // notifyListeners();
  }

  void countCart() {
    var streamDb = Repository().getTotal();
    streamDb.listen((valueStreamDb) {
      var arrayCart = [];
      for(var valueCart in valueStreamDb){
        arrayCart.add(valueCart.id);
      }
      cartCount = arrayCart.toSet().toList().length;
      notifyListeners();
    });
  }

  void getCart() {
    Repository().showCart().then((response){
      cartsList = response;
      notifyListeners();
    },
    onError: (exception){
      if(exception.message != null ){
        notifyListeners();
      }
    });
    // print(cartsList);
    // return ListCart;
  }

  void deleteAllCart() async{
    await db.hapusAllCart();
    await getCart();
    notifyListeners();
  }

  void getTotalC() {
    var streamDb = Repository().getTotal();
    streamDb.listen((valueStreamDb) {
      totalDb = 0;
      for(var kart in valueStreamDb){
        int eachTotal = kart.qty * int.parse(kart.price);
        totalDb += eachTotal;
      }
      notifyListeners();
    });
  }

}