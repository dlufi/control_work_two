import 'package:control_work_two/screen/profil_screen.dart';
import 'package:control_work_two/widget/category_widget.dart';
import 'package:flutter/material.dart';

class BrandsScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => BrandsScreen());

  const BrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/Container.png'),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 68),
                  Row(
                    children: [
                      SizedBox(width: 32),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),

                    ],
                  ),
                  Spacer(),
                  Image.asset("assets/image/Logo (1).png"),
                ],
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CategoryWidget(title: "Featured", items: [
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
              ], onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilScreen()));
              }),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CategoryWidget(title: "Most Watched", items: [
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
                "assets/image/wenthday.png",
              ], onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilScreen()));
              }),
            ),
          ],
        ),
      ),

    );
  }
}
