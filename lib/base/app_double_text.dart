import 'package:flutter/material.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';
import 'package:flutter_app/views/home/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.titleTxt, required this.secTxt,  this.navWidget = const AllTickets()});
  final String titleTxt ;
  final String secTxt;
  final Widget navWidget;

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
            Navigator. push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => navWidget,
              ),
            );
          },child:  Text(secTxt, style: AppStyles.baseTextStyle.copyWith(
              fontSize:16,
              color: AppStyles.primaryColor
          )),),

        ],
      );
  }
}
