import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool color;
  final Icon? icon;
  final Function() onTap;
  const ButtonWidget({Key? key, required this.title, required this.color,  this.icon = null, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 43 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffEEEFF0)),
          color: color? Color(0xffEEEFF0): Color(0xff000000).withOpacity(0.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(icon!=null)
              icon!,
            if(icon!=null)

            SizedBox(width: 12,),

            Text(title,style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: color? Color(0xff000000):Color(0xffFFFFFF)
            ),)
          ],
        ),
      ),
    );
  }
}

