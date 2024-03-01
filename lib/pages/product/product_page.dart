import 'package:flutter/material.dart';
import 'package:green_app/widgets/productpage/appbar.dart';
import 'package:green_app/widgets/productpage/product_card.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBarProduct(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: 6, //Number of product that will shown in the screen
        itemBuilder: (context, index) {
          return ProductCard();
        },
      ),
    );
  }
}
