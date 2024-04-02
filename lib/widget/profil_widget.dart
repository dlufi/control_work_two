import 'package:flutter/material.dart';

class ProfilWidget extends StatelessWidget {
  final String name;
  final String email;
  final Function() onTap;
  const ProfilWidget({Key? key, required this.name, required this.email, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              border:Border.all(color: Color(0xff656E72)),
              borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text(name[0],style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xffEEEFF0)
              ),
              ),
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xffEEEFF0)
              ),),
              Text(email,style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xffB9BFC1)
              ),),
            ],
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios,color: Colors.white,)
        ],
      ),
    );
  }
}

