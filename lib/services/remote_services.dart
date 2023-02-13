import '../models/post.dart';
import 'package:http/http.dart' as http;


class RemoteServices{  //Responsible for fetching Data from Internet

  //Future method to get all users from API url

  Future<UserElement?> getPosts() async{
      var client = http.Client();

      var uri = Uri.parse('https://mocki.io/v1/e56884e6-fd94-43e1-a8a7-64c6d99842c8');
      var response = await client.get(uri);
      if(response.statusCode == 200){
        var json = response.body;
        return userFromJson(json);
      }
      return null;
  }

}