import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/app_double_text.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';

import '../base/res/media.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headerTextStyle3),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Book tickets", style: AppStyles.headerTextStyle1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: const DecorationImage(image: AssetImage(AddMedia.logo))),
                    )
                  ],
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) , color:  Colors.white),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text(" Search", style: AppStyles.lightTextStyle4,)
                    ],
                  ),
                ),
                SizedBox(height:40,),
                AppDoubleText(titleTxt: "Upcoming Flights", secTxt: "View All",),
                Container(
                    child: const Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        ],
                      ),


                    ],)),
                AppDoubleText(titleTxt: "Hotels", secTxt: "View All",),

              ],
            ),
          ),




        ],
      ),
    );
  }
}
