import 'dart:convert';
import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:http/http.dart' as http;

import 'http_extension.dart';

class ElCommonModule {
  Future<List<dynamic>> listFilterBySql(final sqlQuery) async {
    try {
      final _response = await http.post(
        Uri.parse(Const.elasticEndPoint + '/_sql?format=json'),
        body: jsonEncode(sqlQuery),
        headers: Const.headers,
      );
      if (_response.statusCode == 200) {
        final _result = jsonDecode(_response.body);
        final _resultData = _result['rows'];
        return _resultData;
      } else {
        print('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException {
      print('====>NoConnectionException');

      throw NoConnectionException();
    }
  }

  Future<List<dynamic>> listFilter(final query, final body) async {
    print('-------> ${Uri.parse(Const.elasticEndPoint + query)}');
    print('-------> ${body}');
    try {
      final _response = await http.post(
        Uri.parse(Const.elasticEndPoint + query),
        body: jsonEncode(body),
        headers: Const.headers,
      );
      if (_response.statusCode == 200) {
        final _result = jsonDecode(_response.body);
        final _resultData = _result['hits'];
        final _datas = _resultData['hits'];
        return _datas;
      } else {
        print('====>GenericHttpException');
        throw GenericHttpException();
      }
    } on SocketException {
      print('====>NoConnectionException');

      throw NoConnectionException();
    }
  }
}
