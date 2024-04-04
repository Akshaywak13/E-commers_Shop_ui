import 'package:flutter/material.dart';

class ProductItemsDetails extends StatelessWidget {
  const ProductItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.52,
      child: SizedBox(
        width: size.width,
        
      ),
    );
  }
}