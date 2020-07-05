import 'package:flutter/material.dart';
import 'package:flutter_app_online_shop/constants.dart';
import 'package:flutter_app_online_shop/models/Product.dart';
import 'package:flutter_app_online_shop/screens/detail/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    Key key,
    this.product
  })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body2(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
            "assets/icons/back.svg",
          color:Colors.white,
        ),
          onPressed: ()=>Navigator.pop(context),
      ),
      actions:<Widget>[
        IconButton(
            icon: SvgPicture.asset(
                "assets/icons/search.svg",
              color: Colors.white,
            ),
            onPressed: (){},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.white,
          ),
          onPressed: (){},
        ),
        SizedBox(width: kDefaultPaddin/2,),
      ],
    );
  }
}
