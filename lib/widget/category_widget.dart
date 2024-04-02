import 'package:control_work_two/widget/image_widget.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final List<String> items;
  final bool brands;
  final Function() onTap;
  const CategoryWidget({Key? key, required this.title, required this.items,  this.brands = true, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFFFF),
                ),
              ),
              Icon(Icons.arrow_forward_ios,color: Color(0xffEEEFF0),)
            ],
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: brands? 200 : 82,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, _) => SizedBox(width: 10),
            itemBuilder: (context, i) {
              final item = items[i];
              return ImageWidget(image: item ,brands: brands,);
            },
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}