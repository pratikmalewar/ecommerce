import 'package:ecommerce/consts/my_icons.dart';
import 'package:ecommerce/provider/favs_provider.dart';
import 'package:ecommerce/services/globle_method.dart';
import 'package:ecommerce/widget/widhlist_empty.dart';
import 'package:ecommerce/widget/wishlist_full.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wishlist extends StatelessWidget {
  static const routeName = '/wishlist_screen';

  @override
  Widget build(BuildContext context) {
    final favsProvider = Provider.of<FavsProvider>(context);
    GlobalMethod globalMethod = GlobalMethod();
    return Scaffold(
      body: favsProvider.getFavsItems.isEmpty
          ? Scaffold(
              body: WishListEmpty(),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text('Wishlist (${favsProvider.getFavsItems.length})'),
                actions: [
                  IconButton(
                    onPressed: () {
                      globalMethod.showDialogg(
                        'Clear wishlist',
                        'All wishlist will be clear',
                            () => favsProvider.clearFavs(),
                        context,
                      );
                    },
                    icon: Icon(MyAppIcons.trash),
                  )
                ],
              ),
              body: ListView.builder(
                itemCount: favsProvider.getFavsItems.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return ChangeNotifierProvider.value(
                    value: favsProvider.getFavsItems.values.toList()[index],
                    child: WishlistFull(
                      productId: favsProvider.getFavsItems.keys.toList()[index],
                    ),
                  );
                },
              ),
            ),
    );
  }
}
