import 'package:ecommerce/consts/theme_data.dart';
import 'package:ecommerce/inner_screens/brands_navigation_rail%20copy.dart';
import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:ecommerce/scrrens/bottom_bar.dart';
import 'package:ecommerce/scrrens/cart.dart';
import 'package:ecommerce/scrrens/feeds.dart';
import 'package:ecommerce/scrrens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'inner_screens/product_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    // TODO: implement initState
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (
          context,
          themeData,
          child,
        ) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: BottomBarScreen(),
            routes: {
              BrandNavigationRailScreen.routeName: (ctx) =>
                  BrandNavigationRailScreen(),
              Feeds.routeName: (ctx) => Feeds(),
              Cart.routeName: (ctx) => Cart(),
              Wishlist.routeName: (ctx) => Wishlist(),
              ProductDetails.routeName: (ctx) => ProductDetails(),
            },
          );
        },
      ),
    );
  }
}
