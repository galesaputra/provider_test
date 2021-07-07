import 'package:api_app/Repository.dart';
import 'package:api_app/screen/cart_screen.dart';
import 'package:api_app/localStorage/moor_database.dart';
// import 'package:api_app/state/cart_dart';
import 'package:api_app/state/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class showCart extends StatefulWidget {
  @override
  _showCartState createState() => _showCartState();
}

class _showCartState extends State<showCart> {
  int totalDb = 0;

  // var streamDb = Repository().getTotal();
  CartState state = CartState();
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      state.getTotalC();
      // print(state.isLoading);
      // streamDb.listen((valueStreamDb) {
      //       totalDb = 0;
      //       for(var kart in valueStreamDb){
      //          int eachTotal = kart.qty * int.parse(kart.price);
      //          totalDb += eachTotal;
      //          print("totalDb");
      //        }
      //       setState(() {
      //
      //       });
      //   });
      });
  }

  @override
  void dispose() {
  }

  Widget build(BuildContext context) {
    // state = Provider.of<CartState>(context);
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
              state.deleteAllCart();
            },
          ),
        ],
      ),
      body: ChangeNotifierProvider(
          create: (_) {
            // var showCart = CartState();
            state.getCart();
            // state = showCart;
            return state;
          },
          child:
          Consumer(
            builder: (BuildContext context, CartState state, Widget child) {
              return Container(
                child: _body(context, state),
              );
            },
          )
      ),
    );
  }
  _body (context, CartState state) {
    return Stack(children: [
      ListView.builder(
        itemCount: state.cartsList.length ?? 0,
        itemBuilder: (context, index) {
          return Less_cart(id_cart: state.cartsList[index].id_cart, namax: state.cartsList[index].name, jumlah: state.cartsList[index].qty, foto_path: state.cartsList[index].img_path, harga: state.cartsList[index].price, berat: state.cartsList[index].weight, kondisi: state.cartsList[index].item_condition);
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
                  Text('Rp. ' '${state.totalDb}')
                ],
              )
          ),
        ),
      ),
    ]
    );
  }
}

