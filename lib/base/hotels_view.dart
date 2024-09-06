import 'package:flutter/cupertino.dart';
import 'package:flutter_app/base/res/media.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({super.key, required this.itemjson});
  final Map<String,dynamic> itemjson ;
  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(16),
      width: (size.width * 0.6),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),  color: AppStyles.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration:BoxDecoration(
              image: DecorationImage(image:  AssetImage( "${AddMedia.baseImage}/${itemjson["image"]}")

              )
            )
          ),
          const SizedBox(height: 20,),
          Text(itemjson["place"],style: AppStyles.headerTextStyle3.copyWith(color: AppStyles.lightTextColor,fontSize: 20),),
          const SizedBox(height: 8,),

          Text(itemjson["destination"],style: AppStyles.baseTextStyle.copyWith(color: CupertinoColors.white),),
          const SizedBox(height: 8,),

          Text("\$${itemjson["price"]} / night",style: AppStyles.headerTextStyle3.copyWith(color: AppStyles.lightTextColor,fontSize: 24),),


        ],
      ),
    );
  }
}
