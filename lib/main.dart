import 'package:flutter/material.dart';
import 'package:shop/pages/products_overview_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Tush - Compare',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: ProductsOverViewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


