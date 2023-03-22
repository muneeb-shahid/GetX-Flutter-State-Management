import 'package:flutter/material.dart';

class App_Exception implements Exception {
  final _message;
  final _prefix;

  App_Exception([this._message, this._prefix]);

  String toString() {
    return '$_message $_prefix';
  }
}

class InternetException extends App_Exception {
  InternetException([String? message]) : super(message, 'No Internet');
}

class RequestTimeOut extends App_Exception {
  RequestTimeOut([String? message]) : super(message, 'Request Time Out');
}

class ServerException extends App_Exception {
  ServerException([String? message]) : super(message, 'Server Exception');
}
