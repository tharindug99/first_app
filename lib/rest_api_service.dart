import 'dart:html';

import 'package:first_app/user.dart';
import 'package:http/http.dart' as http;


class RestAPIService{

    String apiUrl = 'https://mocki.io/v1/650207cb-9e9b-43bc-b497-09df9f639e11';

    Future<List<User>> getUsers() async{

        final response = await http.get(Uri.parse(apiUrl));

        if(response.statusCode == 200 ){

        }else{
            throw Exception('Unable to fetch data');
        }


    }
}