import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:dio/dio.dart';

class ElCommonModule {
  Future<List<dynamic>> listFilter(final query, final body) async {
    print('--------listFilter---------');
    try {
      Dio dio = new Dio();

      dio.options.headers['Content-Type'] = 'application/json';
      dio.options.headers["authorization"] = Const.apiKey;
      final _response = await dio.post(
        Const.elasticEndPoint + query,
        data: body,
      );
      if (_response.statusCode == 200) {
        final _result = _response.data;
        final _resultData = _result['hits'];
        final _datas = _resultData['hits'];
        return _datas;
      } else {
        print('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException catch (e) {
      print('====>NoConnectionException ${e.toString()}');

      throw NoConnectionException();
    }
  }
}

class GenericHttpException implements Exception {}

class NoConnectionException implements Exception {}
