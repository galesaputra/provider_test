import 'package:api_app/Repository.dart';
import 'package:api_app/screen/cart_screen.dart';
import 'package:api_app/localStorage/moor_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'main.dart';

class showCart extends StatefulWidget {
  @override
  _showCartState createState() => _showCartState();
}

class _showCartState extends State<showCart> {
  int totalDb = 0;
  var streamDb = Repository().getTotal();
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      getCart();
      streamDb.listen((valueStreamDb) {
            totalDb = 0;
            for(var kart in valueStreamDb){
               int eachTotal = kart.qty * int.parse(kart.price);
               totalDb += eachTotal;
               print("totalDb");
             }
            setState(() {

            });
        });
      });
  }

  @override
  void dispose() {
  }

  _body () {
   return Stack(children: [
      ListView.builder(
        itemCount: carts.length,
            itemBuilder: (context, index) {
          return Less_cart(id_cart: carts[index].id_cart, namax: carts[index].name, jumlah: carts[index].qty, foto_path: carts[index].img_path, harga: carts[index].price, berat: carts[index].weight, kondisi: carts[index].item_condition);
        },
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child:
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: Center(
                child:
                    Row(
                      children: [
                        Text('Total Harga'),
                        Text('Rp. ' '$totalDb')
                    ],
                )
            ),
          ),
      ),
      ]
   );
  }
  void getCart() async{
    var ListCart = await Repository().showCart();
      carts = ListCart;
      print(carts);
      setState(() {
      });
  }
  void deleteAllCart() async{
    await db.hapusAllCart();
    await getCart();
    setState(() {
    });
  }
  List<Cart> carts;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        actions: [
          IconButton(
            icon: SizedBox(
                height: 22,
                width: 22,
                child: Icon(Icons.delete_forever)
            ),
            onPressed: () {
              deleteAllCart();
            },
          ),
        ],
      ),
      body: _body(),

    );
  }
}