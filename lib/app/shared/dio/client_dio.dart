import 'package:dio/dio.dart';

abstract class ClientDio {
  Dio client;
   
  ClientDio(this.client, String baseUrl){
    this.client.options.baseUrl = baseUrl;
  }
}

class ClientDioApi extends ClientDio{
  ClientDioApi(Dio client, String baseUrl) 
    : super(client, baseUrl);
}