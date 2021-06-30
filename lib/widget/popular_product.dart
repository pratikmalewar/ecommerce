import 'package:ecommerce/inner_screens/product_detail.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/provider/cart_provider.dart';
import 'package:ecommerce/provider/favs_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productAttribute = Provider.of<Product>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    final favsProvider = Provider.of<FavsProvider>(context);


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            )),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, ProductDetails.routeName,
                arguments: productAttribute.id),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(productAttribute.imageUrl),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Positioned(
                        right: 10,
                        top: 8,
                        child: Icon(
                          Entypo.star,
                          color:favsProvider.getFavsItems.containsKey(productAttribute.id)? Colors.red: Colors.grey.shade800,
                        )),
                    Positioned(
                        right: 10,
                        top: 8,
                        child: Icon(
                          Entypo.star_outlined,
                          color: Colors.white,
                        )),
                    Positioned(
                        right: 10,
                        bottom: 10.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          color: Theme.of(context).backgroundColor,
                          child: Text(
                            '\$ ${productAttribute.price}',
                            style: TextStyle(
                              color: Theme.of(context).textSelectionColor,
                            ),
                          ),
                        )),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productAttribute.title,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Text(
                              productAttribute.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 1,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: cartProvider.getCartItems
                                        .containsKey(productAttribute.id)
                                    ? () {}
                                    : () {
                                        cartProvider.addProductToCart(
                                            productAttribute.id,
                                            productAttribute.price,
                                            productAttribute.title,
                                            productAttribute.imageUrl);
                                      },
                                borderRadius: BorderRadius.circular(30.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    cartProvider.getCartItems
                                            .containsKey(productAttribute.id)
                                        ? MaterialCommunityIcons.check_all
                                        : MaterialCommunityIcons.cart_plus,
                                    size: 25,
                                    color: cartProvider.getCartItems
                                        .containsKey(productAttribute.id)
                                        ?Colors.green: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
