import 'package:ecommerce_shope_ui/model/data_model.dart';
import 'package:ecommerce_shope_ui/screens/detail/product_detail_image.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  const DetailScreen({super.key , required this.products});
  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            //for product detail images
            ProductDetilImage(imageUrl: products.imageUrl),
            //for product item more detail

            Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_back_ios,color: Colors.white,),
          Image.asset(
            "assets/images/menu.png",
            color: Colors.white,
            height: 25,
          )
        ],
      ),
    )
          ],
        ),
      ),
    );
  }
}