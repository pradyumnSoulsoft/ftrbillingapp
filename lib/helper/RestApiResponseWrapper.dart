class RestApiResponseWrapper {
  int? statusCode; // Use int? for nullable integers
  String? responseBody; // Use String? for nullable strings

  RestApiResponseWrapper({this.statusCode, this.responseBody});
}
