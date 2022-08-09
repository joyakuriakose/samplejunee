import 'package:flutter/material.dart';
// import 'package:netflix_clone/assets.dart';
// import 'package:netflix_clone/models/models.dart';

Content sintelContent =  const Content(
  name: 'Sintel',
  imageUrl: 'assetes/images/sintel.png',
  titleImageUrl: 'assetes/images/sintel.png',
  videoUrl: 'assetes/images/sintel.png',
  description:
  'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

class Content {
  final String name;
  final String imageUrl;
  final String? titleImageUrl;
  final String? videoUrl;
  final String? description;
  final Color? color;

  const Content({
    required this.name,
    required this.imageUrl,
    this.titleImageUrl,
    this.videoUrl,
    this.description,
    this.color,
  });
}

const  List<Content> previews =  [
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.orange,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'The Crown',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.red,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.yellow,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.lightBlueAccent,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.green,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.orange,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'The Crown',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.red,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.yellow,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.lightBlueAccent,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: 'assetes/images/sintel.png',
    color: Colors.green,
    titleImageUrl: 'assetes/images/sintel.png',
  ),
];

// List<Content> myList = const [
//   Content(name: 'Violet Evergarden', imageUrl: Assets.violetEvergarden),
//   Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof),
//   Content(name: 'Kakegurui', imageUrl: Assets.kakegurui),
//   Content(name: 'Carole and Tuesday', imageUrl: Assets.caroleAndTuesday),
//   Content(name: 'Black Mirror', imageUrl: Assets.blackMirror),
//   Content(name: 'Violet Evergarden', imageUrl: Assets.violetEvergarden),
//   Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof),
//   Content(name: 'Kakegurui', imageUrl: Assets.kakegurui),
//   Content(name: 'Carole and Tuesday', imageUrl: Assets.caroleAndTuesday),
//   Content(name: 'Black Mirror', imageUrl: Assets.blackMirror),
// ];
//
// List<Content> originals = const [
//   Content(name: 'Stranger Things', imageUrl: Assets.strangerThings),
//   Content(name: 'The Witcher', imageUrl: Assets.witcher),
//   Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy),
//   Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy),
//   Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw),
//   Content(name: 'Stranger Things', imageUrl: Assets.strangerThings),
//   Content(name: 'The Witcher', imageUrl: Assets.witcher),
//   Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy),
//   Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy),
//   Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw),
// ];
//
// List<Content> trending = const [
//   Content(name: 'Explained', imageUrl: Assets.explained),
//   Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla),
//   Content(name: 'Tiger King', imageUrl: Assets.tigerKing),
//   Content(name: 'The Crown', imageUrl: Assets.crown),
//   Content(name: 'Dogs', imageUrl: Assets.dogs),
//   Content(name: 'Explained', imageUrl: Assets.explained),
//   Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla),
//   Content(name: 'Tiger King', imageUrl: Assets.tigerKing),
//   Content(name: 'The Crown', imageUrl: Assets.crown),
//   Content(name: 'Dogs', imageUrl: Assets.dogs),
//];