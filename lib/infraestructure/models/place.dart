import 'package:flutter_travel_ui/infraestructure/models/enums.dart';

class Place{

  late String name;
  late String description;
  late String image;
  late String address;
  late int likes;
  late int comments; 
  late List<Tag> tags;
  late String username;

  Place({
    required this.name,
    required this.description,
    required this.image,
    required this.address,
    required this.likes,
    required this.comments,
    required this.tags,
    required this.username
  });
}