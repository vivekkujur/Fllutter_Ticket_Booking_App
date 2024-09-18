import 'package:flutter/material.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';

class Textwidgetstyle3 extends StatelessWidget {
  const Textwidgetstyle3({super.key, required this.text,  this.color = const Color(0xff000000)});
  final String text ;
  final Color color ;


  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.headerTextStyle3
        .copyWith(fontSize: 16, color: color),
    );
  }
}
