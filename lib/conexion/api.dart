import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../model/note.dart';

class serviceApi {
  getNotes(int number, String title, String description) async {
    var url = Uri.parse('http://analisisproyecto.azurewebsites.net/api/Notes');

    var response = await http.post(url,
        body: {"number": number, "title": title, "description": description});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    print('Respuesta api: $response');
  }
}

//https://analisisproyecto.azurewebsites.net/api/Notes?number=$number&title=$title&description=$description
//http://analisisproyecto.azurewebsites.net/api/Notes?number=0&title=asa&description=asc

class serviceApie {
  getNotes() async {
    var url = Uri.parse('http://analisisproyecto.azurewebsites.net/api/Notes');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
