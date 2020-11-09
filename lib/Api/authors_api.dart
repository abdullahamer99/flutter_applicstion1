import 'package:flutterapplicstion1/model/author.dart';
import 'package:flutterapplicstion1/utilities/api_utilities.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class AuthorsAPI {
  List<Author> authors=List<Author>();
  String AllAuthorsApi = "https://jsonplaceholder.typicode.com/posts";
  Future<List<Author>> fetchAllAuthors() async{
    var response = await http.get(AllAuthorsApi);
    if (response.statusCode ==200){
      var jsonData =jsonDecode( response.body);
      var data=jsonData["data"];
      for( var item in data){
        Author author=Author(item['id'].toString(),item['name'].toString(),item['email'].toString(),item['avatar'].toString());
        authors.add(author);
      }
    }
    return authors;
  }
}