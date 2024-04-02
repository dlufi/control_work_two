import 'package:control_work_two/screen/on_bording_screen.dart';
import 'package:control_work_two/screen/serch_screen.dart';
import 'package:control_work_two/widget/category_widget.dart';
import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import 'home_screen.dart';

class MovedDetalisScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => MovedDetalisScreen());

  const MovedDetalisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F1111),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: 446,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff000000).withOpacity(0.0),
                              Color(0xff111111)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,)),
                              Spacer(),
                              Icon(Icons.add_circle_outline,color: Colors.white,size: 30,),
                              SizedBox(width: 20),
                              Icon(Icons.share,color: Colors.white,size: 30,)
                            ],
                          ),
                        ),
                        Image.asset("assets/image/Movie Logo.png"),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 40),
            ButtonWidget(
                title: "Sign in",
                color: true,
                icon: Icon(Icons.play_arrow,color: Colors.black,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                }),
            const SizedBox(height: 16),
            ButtonWidget(
                title: "Sign in",
                color: false,
                icon: Icon(Icons.save_alt,color: Colors.white,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                }),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Oppenheimer is a biographical film that chronicles the life of J. Robert Oppenheimer, a brilliant physicist who was instrumental in developing the atomic bomb during World War II. This film explores Oppenheim... Read More",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xffB9BFC1)
              ),),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset("assets/image/Media Supported.png"),
            ),
            SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/home_screen_image.png"),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Icon(Icons.play_circle_rounded,color: Colors.white,size: 28,),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Trailer",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB9BFC1)
                      ),),
                      Text("Oppenheimer",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffEEEFF0)
                      ),),
                      Text("1m 45s",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB9BFC1)
                      ),),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 32),
            CategoryWidget(title: "Based on oppenheimer Cast", items: [
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
              "assets/image/wenthday.png",
            ], onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SerchScreen()));
            }),
            SizedBox(height: 100,)
          ],
        ),
      ),

    );
  }
}
