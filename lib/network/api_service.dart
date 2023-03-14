import 'package:dio/dio.dart';
import 'package:flutter_core/network/dio_network.dart' as dio_network;
import 'package:flutter_core/network/response_json.dart';

class ApiService {
  static const String host = "http://127.0.0.1";

  static GenshinDBResponseJson jsonParser(Response response) =>
      GenshinDBResponseJson.fromDioResponse(response);
}

class GenshinDBResponseJson extends JsonResponse {
  GenshinDBResponseJson(
      {Map<String, dynamic>? content, int? errorCode, String? errorMessage})
      : super(
            content: content, errorCode: errorCode, errorMessage: errorMessage);

  factory GenshinDBResponseJson.fromDioResponse(Response response) {
    GenshinDBResponseJson responseJson;
    final Map<String, dynamic> bodyJson = response.data;
    // success
    if (bodyJson.containsKey("data")) {
      responseJson = GenshinDBResponseJson(
          content: bodyJson,
          errorCode: response.statusCode,
          errorMessage: response.statusMessage);
    } else {
      // failed
      String? errorMessage;
      int? errorCode;
      if (bodyJson.containsKey("error")) {
        final errorJson = bodyJson["error"];
        errorCode = errorJson["code"];
        errorMessage = errorJson["message"];
      }
      responseJson = GenshinDBResponseJson(
          content: bodyJson, errorCode: errorCode, errorMessage: errorMessage);
    }

    return responseJson;
  }
}
