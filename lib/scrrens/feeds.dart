import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/widget/feeds_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Feeds extends StatelessWidget {
  List<Product> _products = [
    Product(
      id: 'Sumsung1',
      title: 'Sumsung Galexy S9',
      description:
      'Buy Samsung Galaxy S9 Plus 256 GB, 6 GB RAM Smartphone online at a discounted price from ShopClues.com. Shop Smartphones products @ Lowest Prices',
      price: 50.99,
      imageUrl:
      'https://cdn.shopclues.com/images1/thumbnails/96444/640/1/143365761-96444379-1547995912.jpg',
      brand: 'Sumsung',
      productCategoryName: 'Phone',
      quantity: 65,
      isFavorite: false,
    ),
    Product(
      id: 'Sumsung Galexy A10s',
      title: 'Sumsung Galexy A10s',
      description:
      'SAMSUNG SAMSUNG Galaxy A10s Dual Sim Fizic 32GB LTE 4G Albastru A107FD',
      price: 14.99,
      imageUrl:
      'https://static.quickmobileshop.com/cs-photos/products/original/galaxy-a10s-dual-sim-32gb-lte-4g-blue_10037312_3_1572342121.jpg',
      brand: 'Sumsung',
      productCategoryName: 'Phone',
      quantity: 1002,
      isFavorite: false,
    ),
    Product(
      id: 'Sumsung Galexy A51',
      title: 'Sumsung Galexy A51',
      description:
      'Powered with a 6.5 FHD+ widescreen Super AMOLED display Rear Camera – Resolution (Multiple): 48.0 MP + 12.0 MP + 5.0 MP + 5.0 MP  ',
      price: 30.99,
      imageUrl:
      'https://static.quickmobileshop.com/cs-photos/products/original/galaxy-a10s-dual-sim-32gb-lte-4g-blue_10037312_3_1572342121.jpg',
      brand: 'Sumsung',
      productCategoryName: 'Phone',
      quantity: 102,
      isFavorite: true,
    ),
    Product(
      id: 'Huawei P40 Pro',
      title: 'Huawei P40 Pro',
      description:
      'Huawei P40 5G features a 6.1-inch OLED display that has a resolution of 1,080x2,340 pixels and a 60 Hz refresh rate. The smartphone runs on EMUI 10.1 based on Android 10 and is powered by Kirin 990 5G chipset. It offers 8 GB RAM and 128 GB internal storage',
      price: 30.99,
      imageUrl:
      'https://images.firstpost.com/wp-content/uploads/2020/03/huawei-p40-1024.jpg',
      brand: 'Huawei',
      productCategoryName: 'Phone',
      quantity: 92,
      isFavorite: true,
    ),
    Product(
      id: 'iPhone 12 pro',
      title: 'iPhone 12 pro',
      description:
      'A14 Bionic, the fastest',
      price: 30.99,
      imageUrl:
      'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-max-gold-hero?wid=470&hei=556&fmt=png-alpha&.v=1604021660000',
      brand: 'iPhone',
      productCategoryName: 'Phone',
      quantity: 10,
      isFavorite: true,
    ),
    Product(
      id: 'iPhone 12 pro max',
      title: 'iPhone 12 pro',
      description:
      ' 6.7" Retina XDR OLED screen of 1,284 x 2,778 px resolution, 458ppi, 800 nits, 120Hz touch sensing. HDR10, Dolby Vision support, wide color gamut. True Tone',
      price: 30.99,
      imageUrl:
      'https://fdn.gsmarena.com/imgroot/reviews/20/apple-iphone-12-pro-max/lifestyle/-1200w5/gsmarena_008.jpg',
      brand: 'iPhone',
      productCategoryName: 'Phone',
      quantity: 122,
      isFavorite: true,
    ),
    Product(
      id: 'Hanes Mens',
      title: 'Log Sleeve Beefy Henley Shirt',
      description:
      'Tough enough to go extra innings, this long-sleeve henley tee is as durable as it is soft. * Henley sports a three-button placket.',
      price: 11.0,
      imageUrl:'https://www.route2fashion.com/media/catalog/product/cache/1/small_image/270x/9df78eab33525d08d6e5fb8d27136e95/p/1/p108.jpg',
      brand: 'No Brand',
      productCategoryName: 'Cloths',
      quantity: 12122,
      isFavorite: false,
    ),
    Product(
      id: 'Weave Jogger',
      title: 'Weave Jogger',
      description:
      'THIS STYLE IS UNISEX. PLEASE ORDER A SIZE DOWN.Keep it fresh with the Champion Womens Big C Reverse Weave Jogger. Whether youre kicking back at home or stepping out',
      price: 11.0,
      imageUrl:
      'https://img.shopstyle-cdn.com/sim/c4/3d/c43d452ea080bc79585bd8c44140a693_best/mens-champion-reverse-weave-jogger-pants.jpg',
      brand: 'H&M',
      productCategoryName: 'Cloths',
      quantity: 12122,
      isFavorite: false,
    ),
    Product(
      id: 'Adeliber Dressess for Womens',
      title: 'Adeliber Dressess for Womens',
      description:
      'Pink, blue and orange printed woven A-line dress, has a round neck, three-quarter sleeves, an attached lining, and flared hem',
      price: 81.0,
      imageUrl:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRl6iWW1RANIzec1U4KFy2GFkRUE0WVRj6BA&usqp=CAU',
      brand: 'Adeliber',
      productCategoryName: 'Cloths',
      quantity: 0908,
      isFavorite: false,
    ),
    Product(
      id: 'Tanjun Snakers',
      title: 'Tanjun Snakers',
      description:
      'Lace-up closure with padded footbed that offers all day and everyday comfort. Lightweight and easy on the go shoes. Only worn once',
      price: 40.0,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO9Vjf3G4ituNySEIUiAMkAffzdSIJG3oBoyROsqvKNu_-uwv_PUL_8iDFUTyjxlO2tWo&usqp=CAU',
      brand: 'Adeliber',
      productCategoryName: 'Shoes',
      quantity: 987,
      isFavorite: false,
    ),
  ];


  static const routeName = '/feeds';

  @override
  Widget build(BuildContext context) {
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

          GridView.count(crossAxisCount: 2,
          childAspectRatio: 250/400,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: List.generate(_products.length,(index){
            return FeedsProducts(
              id: _products[index].id,
              description:  _products[index].description,
              price:  _products[index].price,
              imageUrl:  _products[index].imageUrl,
              quantity:  _products[index].quantity,
              isFavorite:  _products[index].isFavorite,
            );
          }),
          ),
        );
  }
}
