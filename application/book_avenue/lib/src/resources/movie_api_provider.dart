import 'dart:convert';

import 'package:book_avenue/src/models/item_model.dart';
import 'package:http/http.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'c4c686836e64c766f237fda168f72c58';

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client
        .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}