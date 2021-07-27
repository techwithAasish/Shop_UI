import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/details/components/add_to_cart.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';
import 'package:shop_app/screens/details/components/description.dart';
import 'color_and_size.dart';
import 'package:shop_app/screens/details/components/productImageWithTitle.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //to get total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin),
                // height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(children: [
                  ColorAndSize(product: product),
                  SizedBox(height: kDefaultPaddin / 2),
                  Description(product: product),
                  SizedBox(height: kDefaultPaddin / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CartCounter(),
                      Container(
                          padding: EdgeInsets.all(8),
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Color(0xFFFF6464), shape: BoxShape.circle),
                          child: SvgPicture.asset('assets/icons/heart.svg'))
                    ],
                  ),
                  AddToCart(product: product)
                ]),
              ),
              ProductImageWithTitle(product: product)
            ]),
          )
        ],
      ),
    );
  }
}

