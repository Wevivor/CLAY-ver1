import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

extension HttpExtend on Future<http.Response> {
  Future<R> mapResponse<R, T>(R Function(T) jsonParser) async {
    try {
      final response = await this;
      if (response.statusCode == 200) {
        var body = response.body;
        var decode = jsonDecode(body);
        return jsonParser(decode);
      } else {
        throw GenericHttpException();
      }
    } on SocketException {
      throw NoConnectionException();
    } catch (err) {
      print('===== ' + err.toString());
      throw NoConnectionException();
    }
  }
}

class GenericHttpException implements Exception {}

class NoConnectionException implements Exception {}
