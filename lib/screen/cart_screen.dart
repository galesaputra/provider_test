import 'package:flutter/material.dart';
import 'package:api_app/Repository.dart';
import 'package:flutter/scheduler.dart';

class Less_cart extends StatefulWidget {
  const Less_cart({
      Key key,
      this.id_cart,
      this.namax,
      this.foto_path,
      this.jumlah,
      this.harga,
      this.berat,
      this.kondisi,
  }) : super(key: key);

  final int id_cart;
  final String namax;
  final String foto_path;
  final int jumlah;
  final String harga;
  final String berat;
  final String kondisi;

  @override
  _Less_cartState createState() => _Less_cartState();
}

class _Less_cartState extends State<Less_cart> {
  int _counter = 1;
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _counter = widget.jumlah;
        setState(() {

        });
    });

  }
  void _incrementCounter() {
    setState(() {
      _counter++;
      Repository().updateCart(widget.id_cart, _counter);
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
      Repository().updateCart(widget.id_cart, _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          height: 200,
          child: new Container(
            child: new GestureDetector(
              onTap: (){},
              child: new Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            if(widget.foto_path.isEmpty == false)
                            Image.network(widget.foto_path, width: 200, height: 150,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text(widget.namax, textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(widget.harga, textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text(widget.kondisi, textAlign: TextAlign.center, style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, bottom: 0),
                          child:
                          Column(
                            children: [
                              SizedBox(height: 50,),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20.0,
                                    height: 20.0,
                                    child: RaisedButton(
                                      color: Colors.red,
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        _decrementCounter();
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('$_counter'),
                                  SizedBox(width: 10,),
                                  SizedBox(
                                    width: 20.0,
                                    height: 20.0,
                                    child: RaisedButton(
                                      color: Colors.cyanAccent,
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        _incrementCounter();
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("${widget.berat} KG", textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}
