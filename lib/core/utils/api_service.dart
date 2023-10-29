import 'package:dio/dio.dart';

class ApiService{
  final _baseURL='https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String,dynamic>> get({required String endpoint})async{
    var response=await _dio.get('$_baseURL$endpoint');

    return response.data;
  }

}