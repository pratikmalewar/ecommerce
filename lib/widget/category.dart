import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key key, this.index}) : super(key: key);

  final int index;
  List<Map<String, Object>> categories = [
    {
      'categoryName': 'Phone',
      'categoryImagesPath': 'assets/images/phones.jpg',
    },
    {
      'categoryName': 'clothes',
      'categoryImagesPath': 'assets/images/clothes.png',
    },
    {
      'categoryName': 'Shoes',
      'categoryImagesPath': 'assets/images/shoes.jpg',
    },
    {
      'categoryName': 'Beauty Health',
      'categoryImagesPath': 'assets/images/health_beauty.jpg',
    },
    {
      'categoryName': 'Laptop',
      'categoryImagesPath': 'assets/images/laptop.jpg',
    },
    {
      'categoryName': 'Furniture',
      'categoryImagesPath': 'assets/images/furniture.jpg',
    },
    {
      'categoryName': 'Watches',
      'categoryImagesPath': 'assets/images/watch.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(
                categories[index]['categoryImagesPath'],

              ),
              fit: BoxFit.cover
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height: 150,
        ),
        Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              color: Theme.of(context).backgroundColor,
              child: Text(
                categories[index]['categoryName'],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Theme.of(context).textSelectionColor,
                ),
              ),
            ))
      ],
    );
  }
}
