import 'package:flutter/material.dart';
import 'package:goods_app/components/default_button.dart';
import 'package:goods_app/screens/cart/cart_screen.dart';
import 'package:goods_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Вы успешно вошли",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Назад",
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
