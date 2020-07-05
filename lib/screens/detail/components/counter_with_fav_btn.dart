import 'package:flutter/material.dart';
import 'package:flutter_app_online_shop/screens/detail/components/cart_counter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        ),
      ],
    );
  }
}
