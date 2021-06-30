import 'package:ecommerce/consts/colors.dart';
import 'package:ecommerce/consts/my_icons.dart';
import 'package:ecommerce/model/cart_attr.dart';
import 'package:ecommerce/provider/cart_provider.dart';
import 'package:ecommerce/services/globle_method.dart';
import 'package:ecommerce/widget/cart_empty.dart';
import 'package:ecommerce/widget/full_cat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart_screen';

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    GlobalMethod globalMethod = GlobalMethod();


    return Scaffold(
      body: cartProvider.getCartItems.isEmpty
          ? Scaffold(
              body: CartEmpty(),
            )
          : Scaffold(
              bottomSheet: checkoutSection(context, cartProvider.totalAmount),
              appBar: AppBar(
                backgroundColor: Theme.of(context).backgroundColor,
                title: Text('Cart (${cartProvider.getCartItems.length})'),
                actions: [
                  IconButton(
                    onPressed: () {
                      globalMethod.showDialogg(
                        'Clear cart',
                        'All items will be deleted',
                        () => cartProvider.clearCart(),
                        context,
                      );
                    },
                    icon: Icon(MyAppIcons.trash),
                  )
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.only(bottom: 55.0),
                child: ListView.builder(
                    itemCount: cartProvider.getCartItems.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return ChangeNotifierProvider.value(
                        value: cartProvider.getCartItems.values.toList()[index],
                        child: CartFull(
                          productId:
                              cartProvider.getCartItems.keys.toList()[index],
                          // id: cartProvider.getCartItems.values.toList()[index].id,
                          // productId:
                          //     cartProvider.getCartItems.keys.toList()[index],
                          // price: cartProvider.getCartItems.values
                          //     .toList()[index]
                          //     .price,
                          // imageUrl: cartProvider.getCartItems.values
                          //     .toList()[index]
                          //     .imageUrl,
                          // title: cartProvider.getCartItems.values
                          //     .toList()[index]
                          //     .title,
                          // quatity: cartProvider.getCartItems.values
                          //     .toList()[index]
                          //     .quantity,
                        ),
                      );
                    }),
              ),
            ),
    );
  }

  Widget checkoutSection(BuildContext ctx,double subTotal) {

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      ColorsConsts.gradiendLStart,
                      ColorsConsts.gradiendLEnd,
                    ],
                    stops: [
                      0.0,
                      0.7,
                    ],
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(ctx).textSelectionColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Total:',
              style: TextStyle(
                color: Theme.of(ctx).textSelectionColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Us ${subTotal.toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
