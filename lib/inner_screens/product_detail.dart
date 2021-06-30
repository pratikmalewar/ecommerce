import 'package:ecommerce/consts/colors.dart';
import 'package:ecommerce/consts/my_icons.dart';
import 'package:ecommerce/provider/cart_provider.dart';
import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:ecommerce/provider/favs_provider.dart';
import 'package:ecommerce/provider/products.dart';
import 'package:ecommerce/scrrens/cart.dart';
import 'package:ecommerce/scrrens/wishlist.dart';
import 'package:ecommerce/widget/feeds_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  static const routeName = '/ProductDetails';

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  GlobalKey previewContainer = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    final favsProvider = Provider.of<FavsProvider>(context);
    final themeState = Provider.of<DarkThemeProvider>(context);
    final productData = Provider.of<Products>(context, listen: false);
    final cartProvider = Provider.of<CartProvider>(context);

    final productId = ModalRoute.of(context).settings.arguments as String;

    print('Product Id $productId');
    final productAttr = productData.findById(productId);

    final productList = productData.products;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              foregroundDecoration: BoxDecoration(color: Colors.black12),
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              child: Image.network(productAttr.imageUrl),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.purple.shade200,
                            onTap: () {},
                            borderRadius: BorderRadius.circular(30.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.save,
                                size: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.purple.shade200,
                            onTap: () {},
                            borderRadius: BorderRadius.circular(30.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.share,
                                size: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Text(
                                  productAttr.title,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'US \$ ${productAttr.price}',
                                style: TextStyle(
                                  color: themeState.darkTheme
                                      ? Theme.of(context).disabledColor
                                      : ColorsConsts.subTitle,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            productAttr.description,
                            style: TextStyle(
                              color: themeState.darkTheme
                                  ? Theme.of(context).disabledColor
                                  : ColorsConsts.subTitle,
                              fontWeight: FontWeight.w400,
                              fontSize: 21,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                        _details(themeState.darkTheme, 'Brand: ',
                            '${productAttr.brand}'),
                        _details(themeState.darkTheme, 'Quantity: ',
                            '${productAttr.quantity}'),
                        _details(themeState.darkTheme, 'Category: ',
                            '${productAttr.productCategoryName}'),
                        _details(themeState.darkTheme, 'Popularity: ',
                            productAttr.isPopular ? 'Popular' : 'Barely know'),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        ),
                        Container(
                          color: Theme.of(context).backgroundColor,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'No reviews yet',
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).textSelectionColor,
                                      fontSize: 21.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  'Be the first review!',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: themeState.darkTheme
                                        ? Theme.of(context).disabledColor
                                        : ColorsConsts.subTitle,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 70.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8.0),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Text(
                      'Suggest products',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: double.infinity,
                    height: 300,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext ctx, int index) {
                          return ChangeNotifierProvider.value(
                              value: productList[index],
                              child: FeedsProducts());
                        }),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  'Detail',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Wishlist.routeName);
                    },
                    icon: Icon(
                      MyAppIcons.wishlist,
                      color: ColorsConsts.favColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(CartScreen.routeName);
                    },
                    icon: Icon(
                      MyAppIcons.cart,
                      color: ColorsConsts.cartColor,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 50,
                      child: RaisedButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(side: BorderSide.none),
                        color: Colors.redAccent.shade400,
                        onPressed:
                            cartProvider.getCartItems.containsKey(productId)
                                ? () {}
                                : () {
                                    cartProvider.addProductToCart(
                                        productId,
                                        productAttr.price,
                                        productAttr.title,
                                        productAttr.imageUrl);
                                  },
                        child: Text(
                          cartProvider.getCartItems.containsKey(productId)
                              ? 'In cart'
                              : 'Add To Cart'.toUpperCase(),
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      child: RaisedButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(side: BorderSide.none),
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              'Buy Now'.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).textSelectionColor),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.payment,
                              color: Colors.green.shade700,
                              size: 19,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: themeState.darkTheme
                            ? Theme.of(context).disabledColor
                            : ColorsConsts.subTitle,
                        height: 50,
                        child: InkWell(
                          splashColor: ColorsConsts.favColor,
                          onTap: () {
                            favsProvider.addAndRemoveFromFav(
                              productId,
                              productAttr.price,
                              productAttr.title,
                              productAttr.imageUrl,
                            );
                          },
                          child: Center(
                            child: Icon(
                              favsProvider.getFavsItems.containsKey(productId)
                                  ? Icons.favorite
                                  : MyAppIcons.wishlist,
                              color: favsProvider.getFavsItems
                                      .containsKey(productId)
                                  ? Colors.red
                                  : ColorsConsts.white,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _details(bool themeState, String title, String info) {
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontWeight: FontWeight.w600,
              fontSize: 21.0,
            ),
          ),
          Text(
            info,
            style: TextStyle(
              color: themeState
                  ? Theme.of(context).disabledColor
                  : ColorsConsts.subTitle,
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
