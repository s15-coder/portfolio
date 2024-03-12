import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String url = "portfolio-web-server.onrender.com";
  static Future<String> sendMessage(
      String email, String message, String name) async {
    http.Response response =
        await http.Client().post((Uri.https(url, 'message')),
            body: jsonEncode({
              "email": email,
              "message": message,
              "name": name,
            }),
            headers: {
          'content-type': "application/json",
          "Access-Control_Allow_Origin": "*",
          'Accept': '*/*'
        });
    return response.body;
  }
}
