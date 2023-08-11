import 'package:ecommerce/components/rounded_icon_btn.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details/components/body.dart';
import 'package:ecommerce/screens/details/components/custom_app_bar.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument? arguments =
    ModalRoute.of(context)?.settings.arguments as ProductDetailsArgument?;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments!.product.rating),
      body: Body(product: arguments.product),
    );
  }
}



class ProductDetailsArgument{
  final Product product;

  ProductDetailsArgument({required this.product});
}
