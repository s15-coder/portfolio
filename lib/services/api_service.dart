import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String url = "https://inboxmessages.herokuapp.com/message";
  static Future<String> sendMessage(
      String email, String message, String name) async {
    http.Response response = await http.post(Uri.parse(url),
        body: jsonEncode({
          "email": email,
          "message": message,
          "name": name,
          "app": "portfolio",
        }),
        headers: {
          'content-type': "application/json",
          "Accept": "application/json",
          "Access-Control_Allow_Origin": "*"
        });
    return response.body;
  }
}
