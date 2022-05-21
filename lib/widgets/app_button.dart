import 'package:flutter/material.dart';
import 'package:travelapp/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundcolor;
  double size;
  final Color bordercolor;
  String?text;
  IconData? icon;
  bool isIcon;
  AppButtons({Key? key,this.isIcon=false,this.text="Hi",this.icon,required this.color, required this.size, required this.backgroundcolor,
    required this.bordercolor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(top: 10),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: bordercolor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundcolor,

      ),
      child: isIcon==false?Center(child: AppText(text: text!,color: color,)):Icon(icon,color: color,),
    );
  }
}
