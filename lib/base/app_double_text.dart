import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.titleTxt, required this.secTxt});
  final String titleTxt ;
  final String secTxt;

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(titleTxt, style: AppStyles.baseTextStyle.copyWith(
              fontSize: 22,
              color: AppStyles.headerTextColor
          )),
          InkWell(onTap: (){
          },child:  Text(secTxt, style: AppStyles.baseTextStyle.copyWith(
              fontSize:16,
              color: AppStyles.primaryColor
          )),),

        ],
      );
  }
}
