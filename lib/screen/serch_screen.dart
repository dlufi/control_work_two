import 'package:control_work_two/screen/brands_screen.dart';
import 'package:control_work_two/widget/category_widget.dart';
import 'package:control_work_two/widget/genres_widget.dart';
import 'package:flutter/material.dart';

class SerchScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => SerchScreen());

  const SerchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F1111),
      body:
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 24),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 41,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff656E72)),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    Icon(Icons.search_rounded,color: Colors.white,),
                    SizedBox(width: 8),
                    Text("Search title, genre, or character",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff747E83)
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Genres",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xffEEEFF0)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffEEEFF0),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: GenresWidget(image: "assets/image/action.png", title: "Action")),
                  SizedBox(width: 12),
                  Expanded(child: GenresWidget(image: "assets/image/action.png", title: "Action")),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: GenresWidget(image: "assets/image/action.png", title: "Action")),
                  SizedBox(width: 12),
                  Expanded(child: GenresWidget(image: "assets/image/action.png", title: "Action")),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: GenresWidget(image: "assets/image/action.png", title: "Action")),
                  SizedBox(width: 12),
                  Expanded(child: GenresWidget(image: "assets/image/action.png", title: "Action")),
                ],
              ),
              SizedBox(height: 32),
              CategoryWidget(title: "Suggested For You", items: [
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
              ], onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BrandsScreen()));
              })
            ],
          ),
        ),
      ),

    );
  }
}
