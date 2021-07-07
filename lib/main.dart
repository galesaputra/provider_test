import 'package:api_app/localStorage/moor_database.dart';
import 'package:api_app/screen/home.dart';
import 'package:api_app/state/cart_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var db = AppDatabase();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => CartState()),
        ChangeNotifierProvider(create: (context) {
          var state = CartState();
          state.getCart4Grid();
          state.countCart();
          state.getTotalC();
          return state;
        }),
      ],
      child:
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomeScreen(),
        ),
    );

  }
}

