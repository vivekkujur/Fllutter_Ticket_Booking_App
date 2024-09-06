import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/all_json.dart';
import 'package:flutter_app/base/app_double_text.dart';
import 'package:flutter_app/base/hotels_view.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';
import 'package:flutter_app/base/ticket_view.dart';
import 'package:flutter_app/views/all_hotels.dart';
import 'package:flutter_app/views/all_tickets.dart';

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
                const SizedBox(height: 40),
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
                          image: const DecorationImage(
                              image: AssetImage(AddMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular),

                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: AppStyles.baseTextStyle,
                            border: InputBorder.none),
                      ))
                      // Text(
                      //   " Search",
                      //   style: AppStyles.lightTextStyle4,
                      // )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const AppDoubleText(
                  titleTxt: "Upcoming Flights",
                  secTxt: "View All",
                  navWidget: AllTickets(),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(2)
                        .map((item) => TicketView(
                              itemjson: item,
                            ))
                        .toList(),
                  ),
                ),
                // SizedBox(
                //   height: 200,
                //   child: ListView.builder(
                //       itemCount: 2,
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (context,index){
                //     return  TicketView();
                //   }),
                // ),

                const SizedBox(
                  height: 20,
                ),

                const AppDoubleText(
                  titleTxt: "Hotels",
                  secTxt: "View All",
                  navWidget: AllHotels(),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(2)
                        .map((item) => HotelsView(itemjson: item))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
