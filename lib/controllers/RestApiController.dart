import 'dart:collection';

import '../helper/DashboardHelper.dart';
import '../helper/RestApiCallout.dart';
import '../helper/RestApiRequestWrapper.dart';
import '../helper/RestApiResponseWrapper.dart';
import '../services/ApiCalloutProcess.dart';
import '../services/RestApiRecordProcessService.dart';

class RestApiController implements ApiCalloutProcess {
  static Map<String, RestApiRecordProcessService> requestEndpointMap = {
    'super/dashboard': DashboardHelper(),
    // 'super/officeType': OfficeTypeHelper(),
  };
//
  @override
 RestApiResponseWrapper processCallout(RestApiRequestWrapper requestWrapper) {
    RestApiResponseWrapper responseWrapper = RestApiCallout.makeCallout(requestWrapper);
    if (responseWrapper.statusCode == 200) {
      if (requestEndpointMap.containsKey(requestWrapper.requestEndpoint)) {
        requestEndpointMap[requestWrapper.requestEndpoint]?.processRecord(requestWrapper, responseWrapper);
      }
    }
    return responseWrapper;
  }
}
