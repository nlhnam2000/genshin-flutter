import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/network/dio_network.dart' as dio_network;
import 'package:flutter_core/network/custom_cancel_token.dart';
import 'package:genshin_app/device/storage_service.dart';
import 'package:genshin_app/main.dart';
import 'package:genshin_app/network/api_service.dart';
import 'package:flutter_core/caches/caches.dart';
import 'package:flutter_core/models/language.dart';
import 'package:genshin_app/screens/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

InterceptorsWrapper get interceptors => InterceptorsWrapper(
      onRequest: onRequestHandle,
      onError: onErrorHandle,
      onResponse: onResponseHandle,
    );

void onRequestHandle(
    RequestOptions options, RequestInterceptorHandler handler) {
  // options.headers['authorization'] = '${Profile.token?.type} ${Profile.token?.access}';
  // switch (AppSetting.usingLanguage) {
  //   case value:

  //     break;
  //   default:
  // }
  Locale? currentLanguage =
      Localizations.localeOf(navigatorKey.currentContext!);
  if (currentLanguage != null) {
    switch (currentLanguage.languageCode) {
      case 'vi':
        options.headers["accept-language"] = 'vi-VN';

        break;
      case 'en':
        options.headers["accept-language"] = 'en-US';
        break;
      default:
        options.headers["accept-language"] = 'en-US';
    }
  }

  handler.next(options);
}

void onErrorHandle(DioError error, ErrorInterceptorHandler handler) async {
  final response = error.response;

  if (response != null) {
    if (response.statusCode == 404) {
      GoRouter.of(navigatorKey.currentContext!).goNamed(SplashScreen.routeName);
    }
  } else {
    StorageService().clearAll();
    GoRouter.of(navigatorKey.currentContext!).goNamed(SplashScreen.routeName);
  }

  /// if the url is wrong or no longer available
  /// then go back to the splash screen

  handler.next(error);
}

void onResponseHandle(
    Response<dynamic> response, ResponseInterceptorHandler handler) {
  if (response.data is List) {
    Map<String, dynamic> data = {
      "data": response.data,
    };
    response.data = data;
  }

  handler.next(response);
}

const int sendTimeout = 60000;
const int receiveTimeout = 60000;
const int connectTimeout = 60000;

Future<GenshinDBResponseJson> get({
  required String host,
  required String path,
  Function(Response)? parser,
  Map<String, String>? headers,
  CustomCancelToken? cancelToken,
  Map<String, dynamic>? params,
  InterceptorsWrapper? customInterceptors,
  int sendTimeout = sendTimeout,
  int receiveTimeout = receiveTimeout,
  int connectTimeout = connectTimeout,
}) async {
  return dio_network.get(
    host,
    path,
    parser: parser ?? ApiService.jsonParser,
    cancelToken: cancelToken,
    connectTimeout: connectTimeout,
    sendTimeout: sendTimeout,
    receiveTimeout: receiveTimeout,
    customInterceptors: customInterceptors ?? interceptors,
    params: params,
    headers: headers,
  );
}
