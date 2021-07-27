import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLinedButton(icon: Icons.remove, press: () {
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString() ,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutLinedButton(
            icon: Icons.add,
            press: () {
            }),
      ],
    );
  }

  SizedBox buildOutLinedButton(
      {required IconData icon, required Function press}) {
    return SizedBox(
        height: 32,
        width: 40,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: OutlinedButton(
            onPressed: press(),
            child: Icon(icon),
          ),
        ));
  }
}
