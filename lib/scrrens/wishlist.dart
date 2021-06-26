import 'package:ecommerce/widget/widhlist_empty.dart';
import 'package:ecommerce/widget/wishlist_full.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  static const routeName = '/wishlist_screen';

  @override
  Widget build(BuildContext context) {
    List wishlistList = [];
    return Scaffold(
      body: wishlistList.isNotEmpty
          ? Scaffold(
              body: WishListEmpty(),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text('Wishlist'),
              ),
              body: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext ctx, int index) {
                  return WishlistFull();
                },
              ),
            ),
    );
  }
}
