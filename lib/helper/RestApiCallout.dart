import 'package:http/http.dart' as http;

import '../services/RestApiService.dart';
import 'RestApiRequestWrapper.dart';
import 'RestApiResponseWrapper.dart';

class RestApiCallout implements RestApiService {
  static String BASE_URL = 'http://localhost:8080/';

  @override
   static RestApiResponseWrapper makeCallout(RestApiRequestWrapper requestWrapper){
    RestApiResponseWrapper responseWrapper = RestApiResponseWrapper();
    String endpoint = requestWrapper.requestEndpoint!;
    String method = requestWrapper.requestMethod!;
    String body = requestWrapper.requestBody!;
    String bearerToken = requestWrapper.bearerToken!;

    try {
      // Define response Object based on Dart language to hold API's response
      http.Response response = apiCall(endpoint, method, body, bearerToken) as http.Response;
      responseWrapper.responseBody = response.body;
      responseWrapper.statusCode = response.statusCode;
    } catch (e) {
      // TODO: handle exception
    }

    return responseWrapper;
  }

  @override
    static Future<http.Response> apiCall(String endpoint, String method, String body, String bearerToken) async {
    final Uri uri = Uri.parse(BASE_URL + endpoint);
    final Map<String, String> headers = {
      'Authorization': bearerToken,
      'Content-Type': 'application/json',
    };

    final http.Response response = http.post(
      uri,
      headers: headers,
      body: body,
    ) as http.Response;

    return response;
  }
}






