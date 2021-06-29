import 'package:ecommerce/provider/products.dart';
import 'package:ecommerce/widget/feeds_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesFeedsScreen extends StatelessWidget {
  static const routeName = '/CategoriesFeedsScreen';

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<Products>(context,  listen: false);
    final categoryName = ModalRoute.of(context).settings.arguments as String;
    print(categoryName);
    final productList = productsProvider.findByCategory(categoryName);

    return Scaffold(
      body:
          // StaggeredGridView.countBuilder(
          //     crossAxisCount: 2,
          //     itemCount: 8,
          //     itemBuilder: (BuildContext context, int index) => FeedsProducts(),
          //     staggeredTileBuilder: (int index) =>
          //         new StaggeredTile.count(3, index.isEven ? 4 : 5),
          //     mainAxisSpacing: 8.0,
          //     crossAxisSpacing: 6.0)

          GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 250 / 400,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: List.generate(productList.length, (index) {
          return ChangeNotifierProvider.value(
            value: productList[index],
            child: FeedsProducts(),
          );
        }),
      ),
    );
  }
}
