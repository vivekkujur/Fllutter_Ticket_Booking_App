class AppExceptions implements Exception{

  final _message;
  final _prefix;

  AppExceptions([this._message,this._prefix]);

  String toString(){
    return '$_prefix$_message';
  }

}


class InternetExceptions extends AppExceptions{
  InternetExceptions([String? message]) :super(message, "No internet ");
}



class ServerExceptions extends AppExceptions{
  ServerExceptions([String? message]) :super(message, "Request Timeout ");
}