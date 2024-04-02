import 'package:flutter/material.dart';

class GenresWidget extends StatelessWidget {
  final String image;
  final String title;
  const GenresWidget({Key? key, required this.image, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 12),
              Text(title,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xffEEEFF0)
              ),),
            ],
          ),
        ],
      ),
    );
  }
}

