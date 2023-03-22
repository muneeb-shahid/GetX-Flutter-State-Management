import 'package:flutter/material.dart';

class App_Exception implements Exception {
  final _message;
  final _prefix;

  App_Exception([this._message, this._prefix]);

  String toString() {
    return '$_message $_prefix';
  }
}
