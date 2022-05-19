import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';
import 'package:shop/pages/product_item.dart';

class ProductsOverViewPage extends StatelessWidget {

  final List<Product> loadedproducts = dummyProducts;

   ProductsOverViewPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tush - Compare"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: loadedproducts.length,
            itemBuilder: (ctx,i)=>ProductItem(product: loadedproducts[i]),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3/2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
        ),
      ),
    );
  }
}
