

import 'package:dio/dio.dart';

class ApiService{

  final dio = Dio();

  Future<Response> GetMusicTagsUrl() async => await dio.get('http://ws.audioscrobbler.com/2.0?api_key=bbaf8c3648d0b473753d55896cec06ce&method=chart.gettoptags&format=json');

}