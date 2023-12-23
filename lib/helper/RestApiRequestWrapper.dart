class RestApiRequestWrapper {
  String? requestEndpoint;
  String? requestMethod;
  String? requestBody;
  String? createdBy;
  String? bearerToken;

  RestApiRequestWrapper({
    this.requestEndpoint,
    this.requestMethod,
    this.requestBody,
    this.createdBy,
    this.bearerToken,
  });
}
