// To parse this JSON data, do
//     final post = postFromJson(jsonString);

import 'dart:convert';

// To parse this JSON data, do
//    1/02/2023
//     final post = postFromJson(jsonString);


List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.name,
    required this.city,
  });

  String name;
  String city;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    name: json["name"],
    city: json["city"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "city": city,
  };
}
