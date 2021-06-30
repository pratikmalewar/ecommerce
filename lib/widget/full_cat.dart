import 'package:ecommerce/consts/colors.dart';
import 'package:ecommerce/consts/my_icons.dart';
import 'package:ecommerce/inner_screens/product_detail.dart';
import 'package:ecommerce/model/cart_attr.dart';
import 'package:ecommerce/provider/cart_provider.dart';
import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:ecommerce/services/globle_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

class CartFull extends StatefulWidget {
  final String productId;

  CartFull({this.productId}); // final String id;
  // final String productId;
  // final double price;
  // final String title;
  // final String imageUrl;
  //
  // final int quantity;
  //
  // CartFull({
  //   @required this.id,
  //   @required this.productId,
  //   @required this.price,
  //   @required this.title,
  //   @required this.imageUrl,
  //   @required this.quantity,
  // });

  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    GlobalMethod globalMethod = GlobalMethod();
    final themeChange = Provider.of<DarkThemeProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    final cartAttr = Provider.of<CartAttr>(context);

    double subTotal = cartAttr.price * cartAttr.quantity;
    return InkWell(
      onTap: () => Navigator.pushNamed(context, ProductDetails.routeName,
          arguments: widget.productId),
      child: Container(
        height: 135,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(16.0),
            bottomRight: const Radius.circular(16.0),
          ),
          color: Theme.of(context).backgroundColor,
        ),
        child: Row(
          children: [
            Container(
              width: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    cartAttr.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            cartAttr.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(32.0),
                            onTap: () {
                              // cartProvider.removeItem(widget.productId);
                              globalMethod.showDialogg(
                                  'Remove items',
                                  'Product will remove from the cart',
                                  () =>
                                      cartProvider.removeItem(widget.productId),
                                  context);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Entypo.cross,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Price:'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${cartAttr.price}\$',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Sub Total:'),
                        SizedBox(
                          width: 5,
                        ),
                        FittedBox(
                          child: Text(
                            '${subTotal.toStringAsFixed(2)} \$',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: themeChange.darkTheme
                                  ? Colors.brown.shade900
                                  : Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Ship Free",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: themeChange.darkTheme
                                ? Colors.brown.shade900
                                : Theme.of(context).accentColor,
                          ),
                        ),
                        Spacer(),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(4.0),
                            onTap: () {
                              if (cartAttr.quantity < 2) {
                                globalMethod.showDialogg(
                                  'Remove item',
                                  'Product will remove permanently',
                                  () =>
                                      cartProvider.removeItem(widget.productId),
                                  context,
                                );
                              } else {
                                cartProvider.reduceItemByOne(
                                  widget.productId,
                                );
                              }
                            },

                            // cartAttr.quantity<2 ? null: () {
                            //   cartProvider.reduceItemByOne(
                            //       widget.productId,
                            //       cartAttr.price,
                            //       cartAttr.title,
                            //       cartAttr.imageUrl);
                            // },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: cartAttr.quantity < 2
                                    ? Icon(
                                        MyAppIcons.trash,
                                        size: 22,
                                        color: Colors.red,
                                      )
                                    : Icon(
                                        Entypo.minus,
                                        color: Colors.pink,
                                      ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.12,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
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
                            child: Text(
                              '${cartAttr.quantity}',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(4.0),
                            onTap: () {
                              cartProvider.addProductToCart(
                                  widget.productId,
                                  cartAttr.price,
                                  cartAttr.title,
                                  cartAttr.imageUrl);
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Entypo.plus,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
