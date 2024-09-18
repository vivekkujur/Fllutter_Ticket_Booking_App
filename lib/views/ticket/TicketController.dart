import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TicketController extends GetxController{
  final dio = Dio();

  var count = 0 .obs;
  RxDouble opacity = 0.4 .obs ;

  increment()=> count++ ;

  updateOpacity(value){
    opacity.value =  value;
  }

  getMusicTags() async{
    var response = await dio.get('http://ws.audioscrobbler.com/2.0?api_key=bbaf8c3648d0b473753d55896cec06ce&method=chart.gettoptags&format=json');
    print("testData" + response.data["tags"]["tag"][0].toString());
    // The below request is the same as abo
  }


}