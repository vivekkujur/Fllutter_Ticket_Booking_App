import 'package:flutter/material.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key, required this.icon, required this.textdata});


  final IconData icon ;
  final String textdata ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16)

      ),
      child: Row(
        children: [
          
         Icon(icon,color: Color(0xffbfc2df),),
         SizedBox(width: 10,),
         Text(textdata,style: AppStyles.blueTextStyle3.copyWith(color: AppStyles.headerTextColor), )

        ],
      ),
    );
  }
}
