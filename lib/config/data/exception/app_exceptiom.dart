class AppException implements Exception {
  final _message;
  final _prefix;
  AppException(this._message, this._prefix);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class NoInternetException extends AppException {
  NoInternetException([String? message])
      : super(message, 'No Internet Connection');
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message])
      : super(message, 'you dont have access to this');
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String? message])
      : super(message, 'Request Time Out');
}

class FetchDataOutException extends AppException {
  FetchDataOutException([String? message]) : super(message, '');
}
