import 'package:dio/dio.dart';
import 'package:flutter_core/network/dio_network.dart' as dio_network;
import 'package:flutter_core/network/custom_cancel_token.dart';
import 'package:genshin_app/network/api_service.dart';

InterceptorsWrapper get interceptors => InterceptorsWrapper(
    onRequest: onRequestHandle,
    onError: onErrorHandle,
    onResponse: onResponseHandle);

void onRequestHandle(
    RequestOptions options, RequestInterceptorHandler handler) {
  // options.headers['authorization'] = '${Profile.token?.type} ${Profile.token?.access}';

  handler.next(options);
}

void onErrorHandle(DioError error, ErrorInterceptorHandler handler) async {
  final response = error.response;
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

// var dio = Dio().interceptors.add(interceptors);

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

// Future get(String host, String path,
//     {Map<String, String>? headers,
//     CustomCancelToken? cancelToken,
//     Map<String, dynamic>? params,
//     InterceptorsWrapper? customInterceptors,
//     int sendTimeout = sendTimeout,
//     int receiveTimeout = receiveTimeout,
//     int connectTimeout = connectTimeout,
//     required Function(Response res) parser}) async {
//   final dio = prepareDio(interceptors: customInterceptors ?? interceptors);
//   dio.options.sendTimeout = sendTimeout;
//   dio.options.receiveTimeout = receiveTimeout;
//   dio.options.connectTimeout = connectTimeout;
//   final response = await dio.get(
//     '$host/$path',
//     queryParameters: params,
//     cancelToken: cancelToken,
//     options: Options(headers: headers),
//   );
//   return parser(response);
// }

// Future post(
//   String host,
//   String path,
//   dynamic body, {
//   Map<String, String>? headers,
//   CustomCancelToken? cancelToken,
//   InterceptorsWrapper? customInterceptors,
//   int sendTimeout = sendTimeout,
//   int receiveTimeout = receiveTimeout,
//   int connectTimeout = connectTimeout,
//   required Function(Response res) parser,
// }) async {
//   final dio = prepareDio(interceptors: customInterceptors ?? interceptors);
//   dio.options.connectTimeout = connectTimeout;
//   dio.options.receiveTimeout = receiveTimeout;
//   dio.options.sendTimeout = sendTimeout;
//   final response = await dio.post(
//     '$host/$path',
//     data: body,
//     cancelToken: cancelToken,
//     options: Options(headers: headers),
//   );
//   return parser(response);
// }

// Future<File> download(
//   String url,
//   String savePath, {
//   CustomCancelToken? cancelToken,
//   ProgressCallback? onReceiveProgress,
//   InterceptorsWrapper? customInterceptors,
// }) async {
//   final dio = prepareDio(interceptors: customInterceptors ?? interceptors);
//   await dio.download(
//     url,
//     savePath,
//     cancelToken: cancelToken,
//     onReceiveProgress: onReceiveProgress,
//   );
//   File file = File(savePath);
//   return file;
// }

// Dio prepareDio({required InterceptorsWrapper interceptors}) {
//   final dio = Dio()..interceptors.add(interceptors);
//   (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//       (HttpClient client) {
//     client.badCertificateCallback =
//         (X509Certificate cert, String host, int port) => true;
//     return client;
//   };
//   return dio;
// }
