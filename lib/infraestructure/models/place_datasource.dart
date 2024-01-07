import 'package:flutter_travel_ui/infraestructure/models/enums.dart';
import 'package:flutter_travel_ui/infraestructure/models/place.dart';

String description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. nisl, quis aliqu';
List<Place> places = [

  Place(
    username: 'Carlos',
    name: 'Montañita',
    description:description,
    image: 'assets/imgs/places/playa_montanita.webp',
    address: 'Montañita, Santa Elena',
    likes: 4500, 
    comments: 452, 
    tags:[Tag.popular, Tag.beach] 
    ),
  Place(
    username: 'Paco',
    name: 'Canoa',
    description:description,
    image: 'assets/imgs/places/playa_canoa.jpg',
    address: 'Canooa, Manabi',
    likes: 1200, 
    comments: 455, 
    tags:[Tag.beach] 
    ),
  Place(
    username: 'Pedro',
    name: 'Ayampe',
    description:description,
    image: 'assets/imgs/places/playa_ayampe.jpg',
    address: 'Ayanpe, Manabi',
    likes: 2300, 
    comments: 200, 
    tags:[Tag.beach] 
    ),

  Place(
    username: 'Luis',
    name: 'Cuenca',
    description:description,
    image: 'assets/imgs/places/city_cuenca.webp',
    address: 'Cuenca, Azuay',
    likes: 1700, 
    comments: 230, 
    tags:[Tag.popular, Tag.city] 
    ),
  Place(
    username: 'David',
    name: 'Quito',
    description:description,
    image: 'assets/imgs/places/city_quito.jpg',
    address: 'Quito, Pichincha',
    likes: 2677, 
    comments: 457, 
    tags:[Tag.popular, Tag.city] 
    ),
  Place(
    username: 'Josue',
    name: 'Guayaquil',
    description:description,
    image: 'assets/imgs/places/city_guayaquil.jpg',
    address: 'Guayaquil, Guayas',
    likes: 3497, 
    comments: 500, 
    tags:[Tag.city] 
    ),
  Place(
    username: 'Nacho',
    name: 'Volcán Cotopaxi',
    description:description,
    image: 'assets/imgs/places/mountun_otopaxi.jpg',
    address: 'Cotonpaxi, Cotopaxi',
    likes: 1740, 
    comments: 200, 
    tags:[Tag.popular, Tag.mountain] 
    ),

  Place(
    username: 'Ivan',
    name: 'Volcán Cayambe',
    description:description,
    image: 'assets/imgs/places/mount_cayambe.jpg',
    address: 'Cayambe, Pichincha',
    likes: 1240, 
    comments: 210, 
    tags:[Tag.mountain] 
    ),
  Place(
    username: 'Jose',
    name: 'Ilinizas',
    description:description,
    image: 'assets/imgs/places/mountn_ilinizas.jpg',
    address: 'Ilinizas, Cotopaxi',
    likes: 780, 
    comments: 130, 
    tags:[Tag.mountain] 
    ),


];

final Map<Tag, List<Place>> filteredPlaces = {
  Tag.popular: places.where((place) => place.tags.contains(Tag.popular)).toList(),
  Tag.beach: places.where((place) => place.tags.contains(Tag.beach)).toList(),
  Tag.mountain: places.where((place) => place.tags.contains(Tag.mountain)).toList(),
  Tag.city: places.where((place) => place.tags.contains(Tag.city)).toList(),
};    
