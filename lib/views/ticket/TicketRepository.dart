import 'package:dio/dio.dart';
import 'package:flutter_app/api/api_service.dart';

mixin TicketRepository on ApiService {


  getMusicTagsApi() async {
    Response response;
    response = await GetMusicTagsUrl();
    return response;
  }

}