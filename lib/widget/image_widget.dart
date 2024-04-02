import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  final bool brands;
  const ImageWidget({Key? key, required this.image, this.brands = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:brands? 158 : 82,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
    );
  }
}

