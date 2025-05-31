import 'dart:convert';
import 'package:ap2flutter/constants.dart';
import 'package:ap2flutter/models/Character.dart';
import 'package:http/http.dart' as http;

class CharacterService{
  Future<List<Character>> getCharacters() async{
    final response = await http.get(Uri.parse('$BASE_URL'));

    if(response.statusCode ==200){
      List jsonResponse = json.decode(response.body)["pokemon"];
      return jsonResponse.map((item) => Character.fromJson(item)).toList();
    } else{
      throw Exception("ERRO AO BUSCA");
    }
  }
}