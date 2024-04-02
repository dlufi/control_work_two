import 'package:control_work_two/screen/on_bording_screen.dart';
import 'package:control_work_two/widget/profil_widget.dart';
import 'package:control_work_two/widget/setting_widget.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => ProfilScreen());

  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F1111),
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 52),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ProfilWidget(name: "Michael", email: "michael@gmail.com", onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnBordingScreen()));
              },),
            ),
            SizedBox(height: 52),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Settings",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xffB9BFC1)
              ),),
            ),
            SettingWidget(title: "Language", onTap: (){}),
            SettingWidget(title: "Notification", onTap: (){}),
            SettingWidget(title: "Manage Download", onTap: (){}),
            SettingWidget(title: "Manage Devices", onTap: (){}),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Subscription",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xffB9BFC1)
              ),),
            ),
            SettingWidget(title: "Active Packages", onTap: (){}),
            SettingWidget(title: "Billing History", onTap: (){}),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Others",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xffB9BFC1)
              ),),
            ),
            SettingWidget(title: "History", onTap: (){}),
            SettingWidget(title: "Privacy Policy", onTap: (){}),


          ],
        ),
      ),

    );
  }
}
