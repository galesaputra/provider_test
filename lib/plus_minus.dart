import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Plus_minus extends StatefulWidget {
  const Plus_minus({Key key}) : super(key: key);

  @override
  _Plus_minusState createState() => _Plus_minusState();
}

class _Plus_minusState extends State<Plus_minus> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("data"),
            ]
        )
    );
  }
}
