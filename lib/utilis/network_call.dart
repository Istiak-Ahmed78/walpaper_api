import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<http.Response> bringData(String url, apiKey) async {
  http.Response response;
  try {
    response = await http.get(url);
  } catch (e) {
    print(e);
    throw 'No Internet';
  }
  return response;
}
