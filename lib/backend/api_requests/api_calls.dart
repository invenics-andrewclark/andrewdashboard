import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LocationAPICall {
  static Future<ApiCallResponse> call({
    String? pinCode = '700123',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'locationAPI',
      apiUrl: 'https://api.postalpincode.in/pincode/${pinCode}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic state(dynamic response) => getJsonField(
        response,
        r'''$[0].PostOffice[0].State''',
      );
  static dynamic area(dynamic response) => getJsonField(
        response,
        r'''$[0].PostOffice[0].Region''',
      );
  static dynamic district(dynamic response) => getJsonField(
        response,
        r'''$[0].PostOffice[0].District''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
