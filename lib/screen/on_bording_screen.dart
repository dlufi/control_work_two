import 'package:control_work_two/screen/home_screen.dart';
import 'package:control_work_two/widget/button_widget.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const OnBordingScreen());

  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/on_Bording.png"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(),
              const Text(
                "Streaming all movie on the go",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Color(0xffEEEFF0)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Text(
                "Stream 4K quality movies, enjoy with downloads. Unlimited entertainment on your hands.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffB9BFC1)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ButtonWidget(
                  title: "Sign in",
                  color: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }),
              const SizedBox(height: 16),
              ButtonWidget(
                  title: "Sign up",
                  color: false,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }),
              const SizedBox(
                height: 52,
              )
            ],
          ),
        ),
      ),
    );
  }
}
