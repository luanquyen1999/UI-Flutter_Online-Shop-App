import 'package:flutter/material.dart';
import 'package:flutter_app_online_shop/constants.dart';
import 'package:flutter_app_online_shop/models/Product.dart';
import 'package:flutter_app_online_shop/screens/detail/details_screen.dart';
import 'package:flutter_app_online_shop/screens/home/components/categorries.dart';
import 'package:flutter_app_online_shop/screens/home/components/item_card.dart';

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
              "Women",
            style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                ),
              itemBuilder: (context,index)=>ItemCard(
                product: products[index],
                press: ()=>Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>DetailsScreen(
                          product: products[index],
                        ),
                    ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

