
import 'package:api_app/state/cart_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import '../Repository.dart';
import '../cart_c.dart';
import '../dummy.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _HomeScreen createState() => _HomeScreen();
//
// }
//
// class _HomeScreen extends State<HomeScreen> {
//   @override
//   int cartCount = 0;
//   var streamDb = Repository().getTotal();
//
//   void initState() {
//     SchedulerBinding.instance.addPostFrameCallback((_) async {
//       state.getCart4Grid();
//       streamDb.listen((valueStreamDb) {
//         var arrayCart = [];
//         for(var valueCart in valueStreamDb){
//           arrayCart.add(valueCart.id);
//         }
//         cartCount = arrayCart.toSet().toList().length;
//         setState(() {
//         });
//       });
//     });
//   }
//   // void getCart4Grid() async{
//   //   Repository().getCart().then((response){
//   //     isLoading = 2;
//   //     carts = response;
//   //     setState(() {
//   //     });
//   //   },
//   //   onError: (exception){
//   //     if(exception.message != null ){
//   //       isLoading = 3;
//   //       setState(() {
//   //       });
//   //     }
//   //   });
//   // }
//   // _body (context, CartState state){
//   //
//   //   if(state.isLoading == 1){
//   //     return Center(
//   //       child: CircularProgressIndicator(),
//   //     );
//   //   }
//   //   else if(state.isLoading == 3){
//   //     return Center(
//   //       child: Text("gagal mendapatkan barang dari server"),
//   //     );
//   //   }
//   //   else {
//   //     return
//   //           GridView.builder(
//   //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//   //                 crossAxisCount: 2,
//   //                 childAspectRatio: MediaQuery.of(context).size.width /
//   //                     (MediaQuery.of(context).size.height / 1),
//   //               ),
//   //               itemCount: state.carts?.length ?? 0,
//   //               itemBuilder: (BuildContext context, index) {
//   //                 return GestureDetector(
//   //                     child:  Card(
//   //                         color: Colors.white,
//   //                         child: Container(
//   //                           padding: EdgeInsets.all(8),
//   //                           child: Column(
//   //                             children: [
//   //                               Flexible(child: Image.network("https://ranting.twisdev.com/uploads/${state.carts[index].foto}"),),
//   //                               SizedBox(height: 10,),
//   //                               Row(
//   //                                 children: [
//   //                                   Container (
//   //                                     padding: const EdgeInsets.all(0),
//   //                                     width: MediaQuery.of(context).size.width/2.5,
//   //                                     child: new Row (
//   //                                       children:[
//   //                                         Flexible(child: Text(state.carts[index].title),),
//   //                                       ],
//   //                                     ),
//   //                                   ),
//   //                                 ],
//   //                               ),
//   //                               SizedBox(height: 7,),
//   //                               Row(
//   //                                 children: [
//   //                                   Column(
//   //                                     children: [
//   //                                       Text("Rp. ${state.carts[index].price}",),
//   //                                     ],
//   //                                   )
//   //                                 ],
//   //                               ),
//   //                               SizedBox(height: 7,),
//   //                               Row(
//   //                                 children: [
//   //                                   Icon(Icons.maps_ugc,size: 20,),
//   //                                   Text(state.carts[index].location_name),
//   //                                 ],
//   //                               ),
//   //                               SizedBox(height: 7,),
//   //                               Container(
//   //                                 // color: Colors.red,
//   //                                 child:
//   //                                 Row(
//   //                                   children: [
//   //                                     Column(
//   //                                       children: [
//   //                                         Row(
//   //                                           children: [
//   //                                             Icon(Icons.account_circle,size: 20,),
//   //                                             Text(state.carts[index].username),
//   //                                           ],
//   //                                         ),
//   //                                         // if(carts[index] != "")
//   //                                         if(int.parse(state.carts[index].is_sold_out ?? 0) > 0)
//   //                                           Row(
//   //                                             children: [
//   //                                               SizedBox(height: 50,),
//   //                                               Container(
//   //                                                 color: Colors.blueAccent,
//   //                                                 padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//   //                                                 child: Text("Ready Stock", style: TextStyle(color: Colors.white),),
//   //                                               )
//   //                                             ],
//   //                                           ),
//   //                                       ],
//   //                                     ),
//   //                                     Container(
//   //                                       alignment: Alignment.topRight,
//   //                                       child:
//   //                                       Column(
//   //                                         children: [
//   //                                           if(int.parse(state.carts[index].halal) > 0)
//   //                                             Row(
//   //                                               children: [
//   //                                                 // Spacer(),
//   //                                                 Image.network(
//   //                                                   "https://seeklogo.com/images/H/halal-logo-150ED752BD-seeklogo.com.png", height: 35,),
//   //                                               ],
//   //                                             ),
//   //                                         ],
//   //                                       ),
//   //                                     )
//   //
//   //                                   ],
//   //                                 ),
//   //                               )
//   //                             ],
//   //                           ),
//   //                         )
//   //                     ),
//   //                     onTap: () {
//   //                       setState(() {
//   //                         Repository().insertCart(state.carts[index]);
//   //                       });
//   //                     }
//   //                 );
//   //               }
//   //           );
//   //   }
//   // }
//
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Test Flutter"),
// //         actions: [
// //           Stack(
// //               children:[
// //                 IconButton(
// //                   icon: SizedBox(
// //                       height: 30,
// //                       width: 22,
// //                       child: Icon(Icons.shopping_bag)
// //                   ),
// //                   onPressed: () {
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(builder: (context) => showCart()),
// //                     );
// //                   },
// //                 ),
// //                 if(cartCount > 0)
// //                   Positioned(
// //                       right: 12,
// //                       top: 3,
// //                       child: Container(
// //                         color: Colors.red,
// //                         padding: EdgeInsets.all(1),
// //                         child:
// //                         Text('$cartCount', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
// //                       )
// //                   ),
// //               ]
// //           )
// //
// //         ],
// //       ),
// //       // body: Text('asdwa'),
// //       body: ChangeNotifierProvider(
// //         create: (_) => CartState(),
// //           child:
// //           Consumer(
// //             builder: (BuildContext context, CartState state, Widget child) {
// //               return Container(
// //                 child: _body(context, state),
// //               );
// //             },
// //           )
// //       )
// //
// // //
// //     );
// //   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CartState state = Provider.of<CartState>(context);
    CartState state = CartState();
    // state.countCart();
    // state.countCart();
    // state.getCart4Grid();
    return Scaffold(
        appBar: AppBar(
          title: Text("Test Flutter"),
          actions: [
            Stack(
                children:[
                  IconButton(
                    icon: SizedBox(
                        height: 30,
                        width: 22,
                        child: Icon(Icons.shopping_bag)
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => showCart()),
                      );
                    },
                  ),
                  // if(state.cartCount > 0)
                    Positioned(
                        right: 12,
                        top: 3,
                        child: Container(
                          // color: Colors.red,
                          padding: EdgeInsets.all(1),
                          child:
                          Consumer(
                            builder: (context, CartState state, child) => Text(
                              '${state.cartCount}',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13
                            ),
                          ),
                        )
                    ),
                    )]
            )

          ],
        ),
        // body: Text('asdwa'),
        body:
        Consumer(
          builder: (BuildContext context, CartState state, Widget child) {
            return Container(
              child: _body(context, state),
            );
          },
        ),
        // ChangeNotifierProvider(
        //     // create: (_) => CartState(),
        //     // create: (_) {
        //       // var showProduct = CartState();
        //       // showProduct.getCart4Grid();
        //       // return showProduct;
        //     //
        //     //   state.getCart4Grid();
        //     //   return state;
        //     // },
        //     child:
        //     Consumer(
        //       builder: (BuildContext context, CartState state, Widget child) {
        //         return Container(
        //           child: _body(context, state),
        //         );
        //       },
        //     )
        // )
    );
  }
}
_body (context, CartState state){

  if(state.isLoading == 1){
    return Center(
      child: CircularProgressIndicator(),
    );
  }
  else if(state.isLoading == 3){
    return Center(
      child: Text("gagal mendapatkan barang dari server"),
    );
  }
  else {
    return
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1),
          ),
          itemCount: state.carts?.length ?? 0,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
                child:  Card(
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Flexible(child: Image.network(state.carts[index].foto),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container (
                                padding: const EdgeInsets.all(0),
                                width: MediaQuery.of(context).size.width/2.5,
                                child: new Row (
                                  children:[
                                    Flexible(child: Text(state.carts[index].title),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Rp. ${state.carts[index].price}",),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 7,),
                          Row(
                            children: [
                              Icon(Icons.maps_ugc,size: 20,),
                              Text(state.carts[index].location_name),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Container(
                            // color: Colors.red,
                            child:
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.account_circle,size: 20,),
                                        Text(state.carts[index].username),
                                      ],
                                    ),
                                    // if(carts[index] != "")
                                    if(int.parse(state.carts[index].is_sold_out ?? 0) > 0)
                                      Row(
                                        children: [
                                          SizedBox(height: 50,),
                                          Container(
                                            color: Colors.blueAccent,
                                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                            child: Text("Ready Stock", style: TextStyle(color: Colors.white),),
                                          )
                                        ],
                                      ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  child:
                                  Column(
                                    children: [
                                      if(int.parse(state.carts[index].halal) > 0)
                                        Row(
                                          children: [
                                            // Spacer(),
                                            Image.network(
                                              "https://seeklogo.com/images/H/halal-logo-150ED752BD-seeklogo.com.png", height: 35,),
                                          ],
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                ),
                onTap: () {
                  state.insertCart(state.carts[index]);
                  // state.countCart();
                  // notifyListeners();
                  // setState(() {
                  //
                  // });
                }
            );
          }
      );
  }
}
