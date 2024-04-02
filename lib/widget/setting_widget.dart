import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  const SettingWidget({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xff272B2C)))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(title,style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffEEEFF0)
            ),),
            Spacer(),
            Icon(Icons.arrow_forward_ios,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}

