import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:dio/dio.dart';

class ElCommonModule {
  initDio() {
    Dio dio = new Dio();

    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers["authorization"] = Const.apiKey;
    dio.options.baseUrl = Const.elasticEndPoint;
    return dio;
  }

  Future<List<dynamic>> listFilter(final query, final body) async {
    debugPrint('--------[${query}]listFilter---------');
    try {
      final dio = initDio();
      final _response = await dio.post(
        query,
        data: body,
      );
      if (_response.statusCode == 200) {
        final _result = _response.data;
        final _resultData = _result['hits'];
        final _datas = _resultData['hits'];
        return _datas;
      } else {
        debugPrint('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException catch (e) {
      debugPrint('====>NoConnectionException ${e.toString()}');

      throw NoConnectionException();
    }
  }

  Future<List<dynamic>> countFilter(final index, final body) async {
    debugPrint('--------listFilter---------');
    try {
      final dio = initDio();

      final _response = await dio.post(
        '${index}/_search',
        data: body,
      );
      if (_response.statusCode == 200) {
        final _result = _response.data;
        final _resultData = _result['aggregations'];
        final _datas = _resultData['group_by_state'];
        return _datas['buckets'];
      } else {
        debugPrint('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException catch (e) {
      debugPrint('====>NoConnectionException ${e.toString()}');

      throw NoConnectionException();
    }
  }

  Future<dynamic> insertEl(
      {required final index, required final id, required final body}) async {
    debugPrint('--------Ins EL---------');
    try {
      final dio = initDio();

      final _response = await dio.post(
        '${index}/_create/${id}?refresh=true',
        data: body,
      );
      if (_response.statusCode == 200 || _response.statusCode == 201) {
        final _result = _response.data;

        return _result;
      } else {
        debugPrint('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException catch (e) {
      debugPrint('====>NoConnectionException ${e.toString()}');

      throw NoConnectionException();
    }
  }

  Future<dynamic> deleteElByQuery({
    required final index,
    final body,
  }) async {
    debugPrint('--------DELETE EL---------');
    try {
      final dio = initDio();

      final _response = await dio.post(
        '${index}/_delete_by_query',
        data: body,
      );
      if (_response.statusCode == 200) {
        final _result = _response.data;
        return _result;
      } else {
        debugPrint('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException catch (e) {
      debugPrint('====>NoConnectionException ${e.toString()}');

      throw NoConnectionException();
    }
  }

  Future<dynamic> deleteEl({
    required final index,
    final id,
  }) async {
    debugPrint('--------DELETE EL---------');
    try {
      final dio = initDio();

      final _response = await dio.delete(
        '${index}/_doc/${id}?refresh=true',
      );
      if (_response.statusCode == 200) {
        final _result = _response.data;
        return _result;
      } else {
        debugPrint('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException catch (e) {
      debugPrint('====>NoConnectionException ${e.toString()}');

      throw NoConnectionException();
    }
  }

  Future<dynamic> updateEl({required final index, final id, final body}) async {
    debugPrint('--------UPDATE EL---------');
    try {
      final dio = initDio();

      final _response = await dio.post(
        '${index}/_update/${id}?refresh=true',
        data: {'doc': body},
      );
      if (_response.statusCode == 200 || _response.statusCode == 201) {
        final _result = _response.data;
        return _result;
      } else {
        debugPrint('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException catch (e) {
      debugPrint('====>NoConnectionException ${e.toString()}');

      throw NoConnectionException();
    }
  }

  Future<dynamic> count({required final index, final params}) async {
    debugPrint('--------UPDATE EL---------');
    try {
      Dio dio = initDio();

      final _response = await dio.get(
        '${index}/_count?' + params,
        // queryParameters: params,
      );
      if (_response.statusCode == 200 || _response.statusCode == 201) {
        final _result = _response.data;
        return _result['count'];
      } else {
        debugPrint('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException catch (e) {
      debugPrint('====>NoConnectionException ${e.toString()}');

      throw NoConnectionException();
    }
  }
}

class GenericHttpException implements Exception {}

class NoConnectionException implements Exception {}
