import 'dart:convert';
import 'package:http/http.dart' as http;
import 'place_model.dart';

class ApiService {
  final String baseUrl = 'https://example.com/api'; // Replace with the actual API base URL

  Future<List<Place>> fetchPlaces() async {
    final response = await http.get(Uri.parse('$baseUrl/places'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => Place.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }

  Future<List<Place>> getAll() async {
    return await fetchPlaces();
  }
}
