import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

//import '../models/product.dart';
//import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
//  final List<Product> loadedProducts = ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (int selectedValue) {
              print(selectedValue);
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: 0,
              ),
              PopupMenuItem(
                child: Text('Show all'),
                value: 1,
              ),
            ],
          ),
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
