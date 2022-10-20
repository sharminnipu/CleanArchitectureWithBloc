import 'package:dio/dio.dart';

class DioHelper{
  final  String _url='http://www.boredapi.com/api/';


  getDataWithoutToken(apiUrl) async{
    var fullUrl=_url+apiUrl;
    Dio dio = Dio();
    return dio.get(fullUrl,
      options: Options(headers: _setHeaders()),);

  }
  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
  };
}