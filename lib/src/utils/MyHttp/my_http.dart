import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MyHttpClient {
  BaseOptions defaultConnectionOptions = BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  Future<Response?>? get({
    required String url,
    BaseOptions? connectionOptions,
    Map<String, dynamic>? queryParameters,
    Options? options,
    Function(Response)? onSuccessCallback,
    Function(DioError)? onErrorCallback,
    Function(DioError)? onErrorTimeoutCallback,
  }) async {
    try {
      connectionOptions = connectionOptions ?? defaultConnectionOptions;
      Dio dio = Dio(connectionOptions);
      var response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
      );
      print('[SUCCESS] - MyHttp > Get(${url}) > OK');
      (onSuccessCallback != null) ? onSuccessCallback(response) : null;
      return response;
    } on DioError catch (e) {
      print('[************ START ERROR DETAIL **************]');
      if (e.type == DioErrorType.connectTimeout) {
        print('[ERROR] - MyHttp > Get(${url}) > ERROR (TIMEOUT)');
        (onErrorTimeoutCallback != null)
            ? onErrorTimeoutCallback(e)
            : throw (e);
      } else {
        print('[ERROR] - MyHttp > Get(${url}) > ERROR (${e.type})');
        (onErrorCallback != null) ? onErrorCallback(e) : throw (e);
      }
      print('[************ END ERROR DETAIL **************]');

      return null;
    }
  }

  Future<Response?>? post({
    required String url,
    dynamic? data,
    BaseOptions? connectionOptions,
    Map<String, dynamic>? queryParameters,
    Options? options,
    Function(Response)? onSuccessCallback,
    Function(DioError)? onErrorCallback,
    Function(DioError)? onErrorTimeoutCallback,
  }) async {
    try {
      connectionOptions = connectionOptions ?? defaultConnectionOptions;
      Dio dio = Dio(connectionOptions);
      var response = await dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      print('[SUCCESS] - MyHttp > Post(${url}) > OK');
      (onSuccessCallback != null) ? onSuccessCallback(response) : null;
      return response;
    } on DioError catch (e) {
      print('[************ START ERROR DETAIL **************]');
      if (e.type == DioErrorType.connectTimeout) {
        print('[ERROR] - MyHttp > Post(${url}) > ERROR (TIMEOUT)');
        (onErrorTimeoutCallback != null)
            ? onErrorTimeoutCallback(e)
            : throw (e);
      } else {
        print('[ERROR] - MyHttp > Post(${url}) > ERROR (${e.type})');
        (onErrorCallback != null) ? onErrorCallback(e) : throw (e);
      }
      print('[************ END ERROR DETAIL **************]');

      return null;
    }
  }

  Future<Response?>? delete({
    required String url,
    dynamic? data,
    BaseOptions? connectionOptions,
    Map<String, dynamic>? queryParameters,
    Options? options,
    Function(Response)? onSuccessCallback,
    Function(DioError)? onErrorCallback,
    Function(DioError)? onErrorTimeoutCallback,
  }) async {
    try {
      connectionOptions = connectionOptions ?? defaultConnectionOptions;
      Dio dio = Dio(connectionOptions);
      var response = await dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      print('[SUCCESS] - MyHttp > Delete(${url}) > OK');
      (onSuccessCallback != null) ? onSuccessCallback(response) : null;
      return response;
    } on DioError catch (e) {
      print('[************ START ERROR DETAIL **************]');
      if (e.type == DioErrorType.connectTimeout) {
        print('[ERROR] - MyHttp > Delete(${url}) > ERROR (TIMEOUT)');
        (onErrorTimeoutCallback != null)
            ? onErrorTimeoutCallback(e)
            : throw (e);
      } else {
        print('[ERROR] - MyHttp > Delete(${url}) > ERROR (${e.type})');
        (onErrorCallback != null) ? onErrorCallback(e) : throw (e);
      }
      print('[************ END ERROR DETAIL **************]');

      return null;
    }
  }

  Future<Response?>? put({
    required String url,
    dynamic? data,
    BaseOptions? connectionOptions,
    Map<String, dynamic>? queryParameters,
    Options? options,
    Function(Response)? onSuccessCallback,
    Function(DioError)? onErrorCallback,
    Function(DioError)? onErrorTimeoutCallback,
  }) async {
    try {
      connectionOptions = connectionOptions ?? defaultConnectionOptions;
      Dio dio = Dio(connectionOptions);
      var response = await dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      print('[SUCCESS] - MyHttp > Put(${url}) > OK');
      (onSuccessCallback != null) ? onSuccessCallback(response) : null;
      return response;
    } on DioError catch (e) {
      print('[************ START ERROR DETAIL **************]');
      if (e.type == DioErrorType.connectTimeout) {
        print('[ERROR] - MyHttp > Put(${url}) > ERROR (TIMEOUT)');
        (onErrorTimeoutCallback != null)
            ? onErrorTimeoutCallback(e)
            : throw (e);
      } else {
        print('[ERROR] - MyHttp > Put(${url}) > ERROR (${e.type})');
        (onErrorCallback != null) ? onErrorCallback(e) : throw (e);
      }
      print('[************ END ERROR DETAIL **************]');

      return null;
    }
  }
}
