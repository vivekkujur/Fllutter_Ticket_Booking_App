import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/app_layoutbuilder_widget.dart';
import 'package:flutter_app/base/big_dot.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.itemjson});
  final Map<String,dynamic> itemjson ;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.83,
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: AppStyles.primaryColor,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      itemjson['from']['code'],
                      style: AppStyles.headerTextStyle3
                          .copyWith(fontSize: 16, color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    const BigDot(),
                    const Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 25,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Center(child: Icon(FluentSystemIcons.ic_fluent_airplane_filled,color: Colors.white,),)
                          ],
                        )),
                    const BigDot(),
                    Expanded(child: Container()),
                    Text(
                        itemjson['to']['code'],
                      style: AppStyles.headerTextStyle3
                          .copyWith(fontSize: 16, color: Colors.white),
                    ),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //
                    //     Text(
                    //       "New-York",
                    //       style: AppStyles.headerTextStyle3
                    //           .copyWith(fontSize: 15, color: Colors.white),
                    //     )
                    //   ],
                    // ),
                    //
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    //   children: [
                    //
                    //     Text(
                    //       "London",
                    //       style: AppStyles.headerTextStyle3
                    //           .copyWith(fontSize: 15, color: Colors.white),
                    //     )
                    //   ],
                    // )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                        Text(
                itemjson['from']['name'],

                          style: AppStyles.headerTextStyle3
                              .copyWith(fontSize: 15, color: Colors.white),
                        ),

                    Text(
                      itemjson['flying_time'],

                      style: AppStyles.headerTextStyle3
                          .copyWith(fontSize: 16, color: Colors.white),
                    ),

                        Text(
                          itemjson['to']['name'],
                          style: AppStyles.headerTextStyle3
                              .copyWith(fontSize: 15, color: Colors.white),
                        )

                  ],
                ),
              ],
            ),
          ),
          Container(
            color: AppStyles.redBackground,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 10,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.white),
                ),
                const Expanded(child: AppLayoutbuilderWidget(randomDivider: 16)),
                Container(
                  height: 20,
                  width: 10,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: AppStyles.redBackground,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:100,
                      child: Text(
                        itemjson['date'],
                        style: AppStyles.headerTextStyle3
                            .copyWith(fontSize: 16, color: Colors.white),
                      ),
                    ),

                    Text(
                      itemjson['departure_time'],
                      style: AppStyles.headerTextStyle3
                          .copyWith(fontSize: 16, color: Colors.white),
                    ),

                    SizedBox(
                      width:100,

                      child: Text(
                        textAlign: TextAlign.end,
                        itemjson['number'].toString(),
                        style: AppStyles.headerTextStyle3
                            .copyWith(fontSize: 16, color: Colors.white),
                      ),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    SizedBox(
                      width:100,
                      child: Text(
                       "Date",

                        style: AppStyles.headerTextStyle3
                            .copyWith(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Text(
                      "Departure time",
                      style: AppStyles.headerTextStyle3
                          .copyWith(fontSize: 15, color: Colors.white,),

                    ),


                    SizedBox(
                      width: 100,
                      child: Text(
                       "Number",
                        textAlign: TextAlign.end,
                        style: AppStyles.headerTextStyle3
                            .copyWith(fontSize: 15, color: Colors.white),
                      ),
                    )

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
