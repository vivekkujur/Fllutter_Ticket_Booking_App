import 'package:flutter/material.dart';
import 'package:flutter_app/base/all_json.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';
import 'package:flutter_app/base/ticket_view.dart';
import 'package:flutter_app/views/search/widgets/search_tabs.dart';
import 'package:flutter_app/views/ticket/TicketController.dart';
import 'package:get/get.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TicketController controller = Get.put(TicketController());


    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Obx(
                () => Text(
                  "Tickets ${controller.count}",
                  style: AppStyles.headerTextStyle1
                      .copyWith(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          const SearchTabs(
            firstTab: 'Upcoming',
            secTab: 'Previous',
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TicketView(
              itemjson: ticketList[0],
              isColor: true,
            ),
          )
          ,
          SizedBox(height:Get.height*.1,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('messages'.tr),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Get.updateLocale(const Locale("en","US"));

              }, child: const Text("English")),
              ElevatedButton(onPressed: (){
                    Get.updateLocale(const Locale("hi","IN"));
              }, child: const Text("Hindi")),

            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("change container background color using getX",style: AppStyles.headerTextStyle4.copyWith(color: AppStyles.redBackground),),
          ),
          Obx(()=>
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: Get.height*0.1,
                      color: Colors.red.withOpacity(controller.opacity.value),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: Get.height*0.1,
                      color: AppStyles.primaryColor.withOpacity(controller.opacity.value),
                    ),
                  ),

                ],
                            ),
              ),
           ),

          const SizedBox(height: 20,),

          Obx(()=>  Slider(onChanged:(value){
            controller.updateOpacity(value);
          }, value: controller.opacity.value )),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {


          controller.increment();
          controller.getMusicTags();
          // Get.to(AllTickets());
          // Get.toNamed("/allTickets");
          },
        child: const Icon(Icons.add),
      ),
    );
  }
}
