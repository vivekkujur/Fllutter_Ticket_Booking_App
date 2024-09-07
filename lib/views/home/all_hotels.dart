import 'package:flutter/material.dart';
import 'package:flutter_app/base/all_json.dart';
import 'package:flutter_app/base/hotels_view.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("All Hotels"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList.map((item) => Container(margin:const EdgeInsets.only(bottom: 20),child: HotelsView(itemjson: item,))).toList(),
            ),
          )
        ],
      ),
    );
  }
}
