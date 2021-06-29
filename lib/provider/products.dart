import 'package:ecommerce/model/product.dart';
import 'package:flutter/cupertino.dart';

class Products with ChangeNotifier {
  List<Product> _products = [
    Product(
      id: 'Sumsung1',
      title: 'Sumsung Galexy S9',
      description:
          'Buy Samsung Galaxy S9 Plus 256 GB, 6 GB RAM Smartphone online at a discounted price from ShopClues.com. Shop Smartphones products @ Lowest Prices',
      price: 50.99,
      imageUrl:
          'https://cdn.shopclues.com/images1/thumbnails/96444/640/1/143365761-96444379-1547995912.jpg',
      brand: 'Samsung',
      productCategoryName: 'Phone',
      quantity: 65,
      isFavorite: false,
      isPopular: true,
    ),
    Product(
      id: 'Sumsung Galexy A10s',
      title: 'Sumsung Galexy A10s',
      description:
          'SAMSUNG SAMSUNG Galaxy A10s Dual Sim Fizic 32GB LTE 4G Albastru A107FD',
      price: 14.99,
      imageUrl:
          'https://static.quickmobileshop.com/cs-photos/products/original/galaxy-a10s-dual-sim-32gb-lte-4g-blue_10037312_3_1572342121.jpg',
      brand: 'Samsung',
      productCategoryName: 'Phone',
      quantity: 1002,
      isFavorite: false,
      isPopular: false,
    ),
    Product(
      id: 'Sumsung Galexy A51',
      title: 'Sumsung Galexy A51',
      description:
          'Powered with a 6.5 FHD+ widescreen Super AMOLED display Rear Camera – Resolution (Multiple): 48.0 MP + 12.0 MP + 5.0 MP + 5.0 MP  ',
      price: 30.99,
      imageUrl:
          'https://static.quickmobileshop.com/cs-photos/products/original/galaxy-a10s-dual-sim-32gb-lte-4g-blue_10037312_3_1572342121.jpg',
      brand: 'Samsung',
      productCategoryName: 'Phone',
      quantity: 102,
      isFavorite: true,
      isPopular: true,
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
      isPopular: false,
    ),
    Product(
      id: 'iPhone 12 pro',
      title: 'iPhone 12 pro',
      description: 'A14 Bionic, the fastest',
      price: 30.99,
      imageUrl: 'https://images.wsj.net/im-256690?width=1280&size=1',
      brand: 'Apple',
      productCategoryName: 'Phone',
      quantity: 10,
      isFavorite: true,
      isPopular: true,
    ),
    Product(
      id: 'iPhone 12 pro max',
      title: 'iPhone 12 pro max',
      description:
          ' 6.7" Retina XDR OLED screen of 1,284 x 2,778 px resolution, 458ppi, 800 nits, 120Hz touch sensing. HDR10, Dolby Vision support, wide color gamut. True Tone',
      price: 30.99,
      imageUrl:
          'https://fdn.gsmarena.com/imgroot/reviews/20/apple-iphone-12-pro-max/lifestyle/-1200w5/gsmarena_008.jpg',
      brand: 'Apple',
      productCategoryName: 'Phone',
      quantity: 122,
      isFavorite: true,
      isPopular: true,
    ),
    Product(
      id: 'Hanes Mens',
      title: 'Log Sleeve Beefy Henley Shirt',
      description:
          'Tough enough to go extra innings, this long-sleeve henley tee is as durable as it is soft. * Henley sports a three-button placket.',
      price: 11.0,
      imageUrl:
          'https://www.route2fashion.com/media/catalog/product/cache/1/small_image/270x/9df78eab33525d08d6e5fb8d27136e95/p/1/p108.jpg',
      brand: 'No Brand',
      productCategoryName: 'Cloths',
      quantity: 12122,
      isFavorite: false,
      isPopular: false,
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
      isPopular: false,
    ),
    Product(
      id: 'Nieuwe',
      title: 'Nieuwe',
      description:
          'THIS STYLE IS UNISEX. PLEASE ORDER A SIZE DOWN.Keep it fresh with the Champion Womens Big C Reverse Weave Jogger. Whether youre kicking back at home or stepping out',
      price: 11.0,
      imageUrl:
          'https://www2.hm.com/content/dam/ladies_s03/may_2021/1203/1203A-CPD-4-brock-collection-hm.jpg',
      brand: 'H&M',
      productCategoryName: 'Cloths',
      quantity: 12122,
      isFavorite: false,
      isPopular: false,
    ),
    Product(
      id: 'Overdrijf',
      title: 'Overdrijf',
      description:
          'Patches, knopen, draden in verschillende kleuren, garen en alles wat je maar kunt bedenken',
      price: 151.0,
      imageUrl:
          'https://files.hm.com/share/ffc/23j-take-care-rn9tse2z8pgieqdx/resources/assets/images/jeans-jacket-embroidery-pacht-dyi.jpg',
      brand: 'H&M',
      productCategoryName: 'Cloths',
      quantity: 12122,
      isFavorite: false,
      isPopular: false,
    ),
    Product(
      id: 'Schone sneakers',
      title: 'Schone sneakers',
      description:
          'Knip de manchetten van je spijkerjack af en gebruik ze voor je wijde jeans bij de enkels voor een',
      price: 151.0,
      imageUrl:
          'https://files.hm.com/share/ffc/23j-take-care-rn9tse2z8pgieqdx/resources/assets/images/turquoise-skirt-readhead-wipe-sneakers.jpg',
      brand: 'H&M',
      productCategoryName: 'Cloths',
      quantity: 122,
      isFavorite: false,
      isPopular: false,
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
      isPopular: false,
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
      isPopular: false,
    ),
    Product(
      id: 'Bronze Watches',
      title: 'Bronze Watches',
      description:
          'For those who are ardent lovers of all things vintage, bronze watches make quite the addition to any horological collection. Here’s a look at some of the best bronze watches in the market today',
      price: 40.0,
      imageUrl:
          'https://www.ethoswatches.com/the-watch-guide/wp-content/uploads/2019/05/Ten-Best-Bronze-Watches-F-1.jpg',
      brand: 'Bronze',
      productCategoryName: 'Watches',
      quantity: 987,
      isFavorite: false,
      isPopular: true,
    ),
    Product(
      id: 'Adidas Shoes1',
      title: 'Adidas Shoes1',
      description:
          '3D PRINTED PERFORMANCE TECHNOLOGY DESIGNED TO MOVE YOU FORWARD',
      price: 40.0,
      imageUrl:
          'https://preview.thenewsmarket.com/Previews/ADID/StillAssets/1920x1080/584221_v2.jpg',
      brand: 'Addidas',
      productCategoryName: 'Shoes',
      quantity: 987,
      isFavorite: false,
      isPopular: true,
    ),
    Product(
      id: 'Adidas Apparel',
      title: 'Adidas Apparel',
      description:
          'Mens adidas Running Products Latest But still, that was the only time he has finished in the top 10 at a major since he turned professional back in',
      price: 68.99,
      imageUrl:
          'https://m.media-amazon.com/images/I/61sbfHgnUTL._AC_SR255,340_.jpg',
      brand: 'Addidas',
      productCategoryName: 'Shoes',
      quantity: 987,
      isFavorite: false,
      isPopular: true,
    ),
    Product(
      id: 'Adidas Trae',
      title: 'Adidas Trae',
      description:
          '3D PRINTED PERFORMANCE TECHNOLOGY DESIGNED TO MOVE YOU FORWARD',
      price: 68.99,
      imageUrl:
          'https://sneakernews.com/wp-content/uploads/2021/06/adidas-trae-young-1-ice-trae-H68997-7.jpg?w=1140',
      brand: 'Addidas',
      productCategoryName: 'Shoes',
      quantity: 987,
      isFavorite: true,
      isPopular: true,
    ),
    Product(
      id: 'Dell XPS 15 2021',
      title: 'Dell laptops 2021',
      description:
          '10th Gen Intel Core i5 – i7.Intel UHD Graphics – NVIDIA GeForce GTX 1650 Ti.8GB – 64GB.15.6" FHD+ (1920 x 1200) InfinityEdge Non-Touch Anti-Glare 500-Nit – 15.6" UHD+ (3840 x 2400) InfinityEdge Touch Anti-Reflective 500-Nit DisplayStorage: 256GB – 2TB M.2 PCIe NVMe',
      price: 608.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEFqmNqPEA4DaMOwaYvHuio77s8o-DwB-U-g&usqp=CAU',
      brand: 'Dell',
      productCategoryName: 'Laptop',
      quantity: 97,
      isFavorite: true,
      isPopular: true,
    ),
    Product(
      id: 'Dell XPS 13 (Late 2020)',
      title: 'Dell XPS 13 (Late 2020)',
      description:
          '10th Gen Intel Core i5 – i7.Intel UHD Graphics – NVIDIA GeForce GTX 1650 Ti.8GB – 64GB.The Dell XPS 15 might be a bit pricey for regular students',
      price: 681.99,
      imageUrl:
          'https://i.dell.com/is/image/DellContent//content/dam/global-site-design/product_images/dell_client_products/notebooks/inspiron_notebooks/inspiron_14_7490/pdp/laptops-inspiron-14-7490-pdp-gallery504x350.jpg?fmt=jpg&wid=570&hei=400',
      brand: 'Dell',
      productCategoryName: 'Laptop',
      quantity: 98,
      isFavorite: true,
      isPopular: true,
    ),
    Product(
      id: 'Nike',
      title: 'Nike',
      description: 'Best Cloths For wear at home',
      price: 68.99,
      imageUrl:
          'https://www.sneaker10.gr/2156540-product_medium/nike-m-nsw-ce-ft-jggr-snl-.jpg',
      brand: 'Nike',
      productCategoryName: 'Cloths',
      quantity: 987,
      isFavorite: true,
      isPopular: true,
    ),
    Product(
      id: 'Nike woman IN',
      title: 'Nike woman IN',
      description:
          'Lightweight and soft, the Nike Sportswear Ringer T-Shirt is made from soft cotton jersey fabric ready for everyday wear. Contrast rib trim on the sleeves and collar put a retro spin on this care-free style',
      price: 68.99,
      imageUrl:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/cc8ec2d1-f4b0-4a71-970b-fd55117245e8/sportswear-fleece-hoodie-sJ378n.png',
      brand: 'Nike',
      productCategoryName: 'Cloths',
      quantity: 97,
      isFavorite: true,
      isPopular: true,
    ),
    Product(
      id: 'Nike Sportswear',
      title: 'Nike Sportswear',
      description:
          'Take to the streets in the comfort of the Nike Sportswear Icon Clash Fleece Crew. Made from semi-brushed-back fleece',
      price: 68.99,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/5b979f04-cfec-4546-9808-6e9bed291279/sportswear-icon-clash-fleece-KfScm0.png',
      brand: 'Nike',
      productCategoryName: 'Cloths',
      quantity: 987,
      isFavorite: false,
      isPopular: false,
    ),
    Product(
      id: 'Paris Saint-Germain',
      title: 'Paris Saint-Germain',
      description:
          'Take your Paris pride street-side in the Paris Saint-Germain Warm-up Jacket. Made from woven fabric with cut-and-sew panels, it features a print inspired by the Parisian football club\'s 4th kit. An authentic Paris Saint-Germain club crest and an iridescent jock tag link back to the collection',
      price: 68.99,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/ba9d90e9-1ade-4cc5-89be-970f4ef3c93c/paris-saint-germain-warm-up-jacket-8ZQJw0.png',
      brand: 'Nike',
      productCategoryName: 'Cloths',
      quantity: 987,
      isFavorite: false,
      isPopular: false,
    ),
    Product(
      id: 'Nike Desert Sand',
      title: 'Nike Desert Sand',
      description: 'Best shoe For wear at home',
      price: 68.99,
      imageUrl:
          'https://static.nike.com/a/images/t_prod_ss/w_960,c_limit,f_auto/fee3c93f-d3f3-4927-b086-ae51eedda9ab/air-jordan-3-retro-racer-blue-release-date.jpg',
      brand: 'Nike',
      productCategoryName: 'Shoes',
      quantity: 987,
      isFavorite: false,
      isPopular: false,
    ),


  ];

  List<Product> get products {
    return _products;
  }

  List<Product> get popularProduct {
    return _products.where((element) => element.isPopular).toList();
  }

  Product findById(String productId){
    return _products.firstWhere((element) => element.id==productId);
  }

  List<Product> findByCategory(String categoryName) {
    List _categoryList = _products
        .where((element) => element.productCategoryName
            .toLowerCase()
            .contains(categoryName.toLowerCase()))
        .toList();
    return _categoryList;
  }

  List<Product> findByBrand(String brandName) {
    List _categoryList = _products
        .where((element) =>
            element.brand.toLowerCase().contains(brandName.toLowerCase()))
        .toList();
    return _categoryList;
  }
}
