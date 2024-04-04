import 'package:ecommerce_shope_ui/screens/detail/curve_image_side.dart';
import 'package:flutter/material.dart';

class ProductDetilImage extends StatelessWidget {
  const ProductDetilImage({super.key , required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: CurveImageSide(),
      child: Align(alignment: Alignment.topCenter,
      child: Center(
        child: Image(
          fit: BoxFit.cover,
          height: size.height *0.6,
          width: size.width,
          image: AssetImage(imageUrl)),
      ),
      ),
    );
  }
}