import 'package:control_work_two/screen/moved_detalis_screen.dart';
import 'package:control_work_two/widget/genres_widget.dart';
import 'package:control_work_two/widget/category_widget.dart';
import 'package:control_work_two/widget/image_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => HomeScreen());

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F1111),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 446,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/home_screen_image.png"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color(0xff000000).withOpacity(0.0),
                          Color(0xff111111)
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Column(
                      children: [
                        Spacer(),
                        Image.asset("assets/image/Movie Logo.png"),
                        SizedBox(height: 12),
                        Text(
                          "Physicist and nuclear scientist, best known for developing the atomic bomb.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffB9BFC1)),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 90),
            CategoryWidget(title: "Popular Movies", items: [
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
            ], onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MovedDetalisScreen()));
            },),
            SizedBox(height: 27),
            CategoryWidget(title: "TV Series", items: [
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
            ], onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MovedDetalisScreen()));
            },),
            SizedBox(height: 32),
            CategoryWidget(title: "Brands", brands: false, items: [
              "assets/image/icon_brands.png",
              "assets/image/icon_brands.png",
              "assets/image/icon_brands.png",
              "assets/image/icon_brands.png",
              "assets/image/icon_brands.png",
              "assets/image/icon_brands.png",
            ], onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MovedDetalisScreen()));
            },),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MovedDetalisScreen()));
                },
                child: Row(
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
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 20),
                  GenresWidget(image: "assets/image/action.png", title: "Action"),
                  SizedBox(width: 12),
                  GenresWidget(image: "assets/image/action.png", title: "Action"),
                  SizedBox(width: 12),
                  GenresWidget(image: "assets/image/action.png", title: "Action"),
                  SizedBox(width: 12),
                  GenresWidget(image: "assets/image/action.png", title: "Action"),
                  SizedBox(width: 12),
                  GenresWidget(image: "assets/image/action.png", title: "Action"),
                  SizedBox(width: 12),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
