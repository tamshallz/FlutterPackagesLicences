import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:dart_licenses/Models/api_base.dart';
import 'package:dart_licenses/Models/api_exceptions.dart';

class HttpClient {
  static final HttpClient _singleton = HttpClient();

  static HttpClient get instance => _singleton;

  Future<dynamic> fetchData(
      {Map<String, String>? params, String? packageName}) async {
    var responseJson;
    var uri = Uri.parse(APIBase.baseURL +
        (packageName ?? '') +
        ((params != null) ? queryParameters(params) : ""));
    var header = {'Authorization': ''};
    try {
      final response = await http.get(uri, headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> fetchPopularityData({Map<String, String>? params}) async {
    var responseJson;
    var uri = Uri.parse(APIBase.popularityBaseURL +
        ((params != null) ? queryParameters(params) : ""));
    var header = {'Authorization': ''};
    try {
      final response = await http.get(uri, headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  String queryParameters(Map<String, String> params) {
    // ignore: unnecessary_null_comparison
    if (params != null) {
      final jsonString = Uri(queryParameters: params);
      return '?${jsonString.query}';
    }
    return '';
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
