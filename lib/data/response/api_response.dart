import 'package:getx/data/response/status.dart';

class Api_Response<T> {
  Status? status;
  T? data;
  String? message;

  Api_Response(this.status, this.data, this.message);
  Api_Response.loading() : status = Status.LOADING;
  Api_Response.completed() : status = Status.completed;
  Api_Response.error() : status = Status.error;

  String toString() {
    return 'Status: $status \n Message: $message \n Data: $data';
  }
}
