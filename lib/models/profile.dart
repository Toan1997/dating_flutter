import 'package:flutter/material.dart';

class Profile {
  final int id;
  final String name, description;
  final List<String> images;

  Profile({
    required this.id,
    required this.images,
    required this.name,
    required this.description,
  });

  int? get length => null;

}

// Our demo Products

List<Profile> demoProfile = [
  Profile(
    id: 1,
    images: [
      "assets/images/rose2.jpg",
      "assets/images/rose3.jpg",
    ],
    name: "Rose™",
    description: description,

  ),
  Profile(
    id: 2,
    images: [
      "assets/images/rose.jpg",
      "assets/images/rose3.jpg",
      "assets/images/rose4.jpg",
    ],
    name: "Wireless Controller for PS4™",
    description: description,

  ),
];

const String description =
    "abc";