import '../models/post.dart';
import 'package:http/http.dart' as http;


class RemoteServices{  //Responsible for fetching Data from Internet

  Future<List<Post>?> getPosts() async{
      var client = http.Client();

      var uri = Uri.parse('https://mocki.io/v1/d4867d8b-b5d5-4a48-a4ab-79131b5809b8');
      var response = await client.get(uri);
      if(response.statusCode == 200){
        var json = response.body;
        return postFromJson(json);
      }
      return null;
  }

}