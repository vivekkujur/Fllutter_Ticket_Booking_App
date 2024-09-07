import 'package:flutter/material.dart';
import 'package:flutter_app/base/app_double_text.dart';
import 'package:flutter_app/views/search/widgets/app_text_icon.dart';
import 'package:flutter_app/views/search/widgets/search_tabs.dart';

import '../../base/res/media.dart';
import '../../base/res/styles/app_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "What are \n you looking for?",
              style: AppStyles.headerTextStyle1
                  .copyWith(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          const SearchTabs(),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AppTextIcon(
              icon: Icons.flight_takeoff_rounded,
              textdata: "Departure",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AppTextIcon(
              icon: Icons.flight_land_rounded,
              textdata: "Arrival",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Color(0xff314cd3)),
                    minimumSize: WidgetStateProperty.all(Size(size.width, 60))),
                child: Text(
                  "Find Tickets",
                  style: AppStyles.baseTextStyle.copyWith(color: Colors.white),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: AppDoubleText(
              titleTxt: "Upcoming Flights",
              secTxt: "View All",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                padding: const EdgeInsets.all(16),
                width: size.width * .45,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                  "${AddMedia.baseImage}/one.jpg",
                                )),
                            borderRadius: BorderRadius.circular(20))),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "20% discount on tha early booking if this flight. don't miss",
                      style: AppStyles.headerTextStyle3.copyWith(
                          color: AppStyles.headerTextColor, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .4,
                        padding: const EdgeInsets.all(16),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff39b8b7),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: AppStyles.headerTextStyle3.copyWith(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Take the survey about our services and get discount",
                              style: AppStyles.headerTextStyle3.copyWith(
                                  color: Colors.white, fontWeight: FontWeight.w500,fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18, color: const Color(0xff189999)
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: size.width * .4,
                        padding: const EdgeInsets.all(16),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffeb6545),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Take Love",
                              style: AppStyles.headerTextStyle3.copyWith(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                           Image(image: AssetImage(AddMedia.smiley,))


                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> searchTabs = [
  {'tabs_name': "Airplane Tickets", 'selected': true},
  {'tabs_name': "Hotels", 'selected': false}
];
