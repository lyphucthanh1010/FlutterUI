import 'package:ecommerce/components/product_card.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details/detail_screen.dart';
import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {},),
        SizedBox(height: getProportionateScreenWidth(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) =>
                  ProductCard(product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                      context,
                      DetailScreen.routeName,
                      arguments: ProductDetailsArgument(
                          product: demoProducts[index]),),),
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
            ],
          ),
        ),
      ],
    );
  }
}