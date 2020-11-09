
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutterapplicstion1/model/post_model_api.dart';

class PostaAPI {
  Future<List<Post>> fetChPostsByCategoryId() async {
    String whatsNewApi = " http://newsapi.aba.vg/public/api/posts";
    var respones = await http.get(whatsNewApi);
    List<Post> posts = List<Post>();
    if (respones.statusCode == 200) {
      var jsondata = jsonDecode(respones.body);
      var data = jsondata["data"];
      for (var item in data) {
        Post post = Post(
          iid: item["id"].toString(),
          title: item["title"].toString(),
          content: item["content"].toString(),
          dateWritten: item["dateWritten"].toString(),
          featuredImage: item["featuredImage"].toString(),
          votesUp: item["votesUp"],
          votesDown: item["votesDown"],
          votersUp: (item["votersUP"] ==null)? List<int>() :jsonDecode(item["votersUP"]),
          votersDown: (item["votersDown"] == null)? List<int>() : jsonDecode(item["votersDown"]),
          userId: item["userId"],
          categoryTd: item["categoryTd"],
        );
        posts.add(post);
      }
    }
    return posts;
  }
}