import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';

import '../exception/exception.dart';
import 'base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    dynamic responsejson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responsejson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responsejson;
  }

  @override
  Future postApi(String data, String url) async {
    dynamic responsejson;
    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(data))
          .timeout(Duration(seconds: 10));
      responsejson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responsejson;
  }
}

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic responsejson = jsonEncode(response.body);
      break;

    case 500:
      throw InternalServerErrorException();
    default:
      throw ServiceUnavailable(response.statusCode.toString());
  }
}
