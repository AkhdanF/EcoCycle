import 'package:flutter/material.dart';
import 'package:ecocycle/data/productdata.dart'; // Import your product data model
import 'package:ecocycle/widget/productcard_widget.dart';

class CategorybodyWidget extends StatelessWidget {
  final String activeCategory;

  const CategorybodyWidget({
    required this.activeCategory,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = activeCategory == 'All'
        ? products // Assuming products is a list of Product objects
        : products
            .where((product) => product.category == activeCategory)
            .toList();

    return Container(
      height: 630,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: filteredProducts.map((product) {
          return ProductCardWidget(product: product);
        }).toList(),
      ),
    );
  }
}
