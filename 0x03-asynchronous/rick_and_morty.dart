import 'package:http/http.dart' as http;
import 'dart:convert';

// function printRmCharacters() that prints all Rick and Morty Characters.
Future<void> printRmCharacters() async {
  try {
    var response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    List<dynamic> characters = jsonResponse['results'];
    for (var character in characters) {
      print(character['name']);
    }
  } catch (error) {
    print('error caught: $error');
  }
} 
