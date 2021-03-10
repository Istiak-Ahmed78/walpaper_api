import 'dart:convert';

import 'package:http/http.dart';

String resposeBody(Response response) {
  if (response.statusCode == 200) {
    if (response.body.isNotEmpty) {
      return response.body;
    } else {
      return response.body;
    }
  } else {
    return 'No Data found.Response code ${response.statusCode}';
  }
}

Future convertedData(String responsebody) async {
  return await jsonDecode(responsebody);
}
