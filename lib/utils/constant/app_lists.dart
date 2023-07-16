part of '../imports/app_imports.dart';

class Applists {
  static List<Map> alldrinks_list = [
    {
      "price": 4.20,
      "image_path": "assets/images/coffee1.jpeg",
      "rating": 3.7,
    },
    {
      "price": 3.70,
      "image_path": "assets/images/coffee2.jpeg",
      "rating": 4.5,
    },
    {
      "price": 3.70,
      "image_path": "assets/images/coffee3.jpeg",
      "rating": 5.5,
    },
    {
      "price": 1.20,
      "image_path": "assets/images/coffee4.jpeg",
      "rating": 1.7,
    },
    {
      "price": 2.20,
      "image_path": "assets/images/coffee5.jpeg",
      "rating": 2.7,
    },
    {
      "price": 3.20,
      "image_path": "assets/images/coffee6.jpeg",
      "rating": 4.7,
    },
    {
      "price": 5.20,
      "image_path": "assets/images/coffee7.jpeg",
      "rating": 6.7,
    },
    {
      "price": 3.20,
      "image_path": "assets/images/coffee8.jpeg",
      "rating": 5.7,
    },
  ];

  static List<Map> cappuccino_list = [
    {
      "title": "Cappuccino",
      "price": 3.20,
      "image_path": "assets/images/coffee1.jpeg",
      "rating": 4.7,
    },
  ];

  static List<Map> espresso_list = [
    {
      "title": "Espresso",
      "price": 3.20,
      "image_path": "assets/images/coffee2.jpeg",
      "rating": 4.7,
    },
    {
      "title": "Espresso",
      "sub_title": "with Caramel",
      "price": 3.20,
      "image_path": "assets/images/caramel_latte.png",
      "rating": 4.7,
    },
  ];

  static List<Map> latte_list = [
    {
      // "title": "Lavender Latte",
      "title": "Latte",
      "sub_title": "with Lavender",
      "price": 3.20,
      "image_path": "assets/images/lavender_latte.png",
      "rating": 4.7,
    },
    {
      "title": "Latte",
      "sub_title": "with Caramel",
      "price": 3.20,
      "image_path": "assets/images/caramel_latte.png",
      "rating": 4.7,
    },
    {
      "title": "Latte",
      "sub_title": "with Mocha",
      "price": 3.20,
      "image_path": "assets/images/MOCHA_LATTE.jpg",
      "rating": 4.7,
    },
    {
      "title": "Latte",
      "sub_title": "with Pistachio",
      "price": 3.20,
      "image_path": "assets/images/pistachio_latte.png",
      "rating": 4.7,
    },
    {
      "title": "Pumpkin Spice Latte",
      // "sub_title": "with Pistachio",
      "price": 3.20,
      "image_path": "assets/images/Pumpkin_Spice_Latte.png",
      "rating": 4.7,
    },
  ];

  static List<Map> flatwhite_list = [
    {
      "title": "Flat White",
      "price": 3.20,
      "image_path": "assets/images/coffee4.jpeg",
      "rating": 4.7,
    },
  ];

  static List<Map> list_of_lists = [
    {
      "list": Applists.alldrinks_list,
    },
    {
      "list": Applists.espresso_list,
    },
    {
      "list": Applists.latte_list,
    },
    {
      "list": Applists.flatwhite_list,
    },
    {
      "list": Applists.cappuccino_list,
    },
  ];
}
