import 'package:http/http.dart' as http;

class serviceApi {
  getNotes(int noteId) async {
    var url = Uri.parse('http://analisisproyecto.azurewebsites.net/api/Notes');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
