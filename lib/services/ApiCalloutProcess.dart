import '../helper/RestApiRequestWrapper.dart';
import '../helper/RestApiResponseWrapper.dart';

abstract class ApiCalloutProcess {
  RestApiResponseWrapper processCallout(RestApiRequestWrapper requestWrapper);
}

