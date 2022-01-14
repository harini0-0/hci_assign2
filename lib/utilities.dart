import 'package:flutter/material.dart';
// import 'package:flat_icons_flutter/flat_icons_flutter.dart';

final Color mainColor = Color(0xFFFF5656);

//-----GLOBAL VARIABLES-----
final List<MountModel> mountItems = [
  MountModel(
      path:
      'images/job-list1.png',
      name: 'Home Furnishing',
      description:
      'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. It is the highest mountain on the island of Java.',
      location: 'East Java'),
  MountModel(
      path:
      'images/job-list2.png',
      name: 'Electronics',
      description:
      'Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. The name Merbabu could be loosely translated as Mountain of Ash from the Javanese combined words; Meru means mountain and awu or abu means ash.',
      location: 'Central Java'),
  MountModel(
      path: 'images/job-list3.png',
      name: 'Clothing & Accessories',
      description:
      'Mauna Loa is one of five volcanoes that form the Island of Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest subaerial volcano in both mass and volume, Mauna Loa has historically been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
      location: 'Hawaii'),
  MountModel(
      path:
      'images/job-list4.png',
      name: 'Cooking & Kitchen',
      description:
      'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
      location: 'Italy'),
  MountModel(
      path:
      'images/job-list5.png',
      name: 'Toys & Games',
      description:
      'Popocatépetl is an active stratovolcano located in the states of Puebla, Morelos, and Mexico in central Mexico. It lies in the eastern half of the Trans-Mexican volcanic belt. At 5,426 m it is the second highest peak in Mexico, after Citlaltépetl at 5,636 m.',
      location: 'Mexico')
];

final List<CategoryModel> categories = [
  CategoryModel(category: 'Best Sellers', icon: "images/app.jpg"),
  CategoryModel(category: "Today's Deals", icon: "images/sales.jpg"),
  CategoryModel(category: 'New Releases', icon: "images/dev.jpg"),
  CategoryModel(category: 'Offers', icon: "images/content.jpg")
];

final cat2 = {'Clothing & Accessories': [
  SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Women', path: 'https://m.media-amazon.com/images/I/719jGyTBqzL._AC_UL480_FMwebp_QL65_.jpg'),
  SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Men', path: 'https://m.media-amazon.com/images/I/51++cxHDe6L._AC_UL480_FMwebp_QL65_.jpg'),
  SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Kids', path: 'https://m.media-amazon.com/images/I/61JO5lE0NjL._AC_UL480_FMwebp_QL65_.jpg'),
  SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Bags & Luggage', path: 'https://m.media-amazon.com/images/I/81bXa3abFhL._AC_UL480_FMwebp_QL65_.jpg'),
  SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Sportswear', path: 'https://m.media-amazon.com/images/I/41r0wVg2xDS._AC_UL480_FMwebp_QL65_.jpg'),
  SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Shoes', path: 'https://m.media-amazon.com/images/I/61z3crSHT0L._AC_UL480_FMwebp_QL65_.jpg'),
],
  'Home Furnishing': [
    SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Living Room', path: 'https://m.media-amazon.com/images/I/51x4cD3IclL._AC_UL480_FMwebp_QL65_.jpg'),
    SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Kitchen', path: 'https://m.media-amazon.com/images/I/51x4cD3IclL._AC_UL480_FMwebp_QL65_.jpg'),
    SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Bedroom', path: 'https://m.media-amazon.com/images/I/51x4cD3IclL._AC_UL480_FMwebp_QL65_.jpg'),
    SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Room', path: 'https://m.media-amazon.com/images/I/51x4cD3IclL._AC_UL480_FMwebp_QL65_.jpg'),
    SecondCategoryModel(mainCategory: 'Clothing & Accessories', category: 'Storage', path: 'https://m.media-amazon.com/images/I/51x4cD3IclL._AC_UL480_FMwebp_QL65_.jpg'),
  ]
};

final cat3 ={'Women': [
  ItemModel(secCategory: 'Women', item: 'Biba Girls Womens Rayon A-Line Kurta', path: 'https://m.media-amazon.com/images/I/71-vsSp+04L._AC_SR180,120_QL70_.jpg', rate: '₹1,124.00'),
  // ItemModel(secCategory: 'Women', item: 'Biba Girls Womens Rayon A-Line Kurta', path: 'https://m.media-amazon.com/images/I/71-vsSp+04L._AC_SR180,120_QL70_.jpg', rate: '₹1,124.00'),
  // ItemModel(secCategory: 'Women', item: 'Biba Girls Womens Rayon A-Line Kurta', path: 'https://m.media-amazon.com/images/I/71-vsSp+04L._AC_SR180,120_QL70_.jpg', rate: '₹1,124.00'),
  // ItemModel(secCategory: 'Women', item: 'Biba Girls Womens Rayon A-Line Kurta', path: 'https://m.media-amazon.com/images/I/71-vsSp+04L._AC_SR180,120_QL70_.jpg', rate: '₹1,124.00'),
  // ItemModel(secCategory: 'Women', item: 'Biba Girls Womens Rayon A-Line Kurta', path: 'https://m.media-amazon.com/images/I/71-vsSp+04L._AC_SR180,120_QL70_.jpg', rate: '₹1,124.00'),
  // ItemModel(secCategory: 'Women', item: 'Biba Girls Womens Rayon A-Line Kurta', path: 'https://m.media-amazon.com/images/I/71-vsSp+04L._AC_SR180,120_QL70_.jpg', rate: '₹1,124.00'),
],
  'Living Room': [
    ItemModel(secCategory: 'Women', item: 'Dev Handicrafts WERAN Coffee Table', path: 'https://m.media-amazon.com/images/I/51x4cD3IclL._AC_UL480_FMwebp_QL65_.jpg', rate: '₹8,124.00'),
    ItemModel(secCategory: 'Women', item: 'Rack', path: 'https://m.media-amazon.com/images/I/41bGxSx1+DL._AC_UL480_FMwebp_QL65_.jpg', rate: '₹544.00'),
    ItemModel(secCategory: 'Women', item: 'Tripod Floor Lamp With Jute Shade ', path: 'https://m.media-amazon.com/images/I/51IY+z7JHjS._AC_UL480_FMwebp_QL65_.jpg', rate: '₹1,120.00'),
  ]
};

//----MODELS----

class MountModel {
  String path;
  String name;
  String location;
  String description;

  MountModel({
    this.path = '',
    this.name = '',
    this.location = '',
    this.description = ''
  });
}

class ItemModel{
  String secCategory;
  String item;
  String path;
  String rate;

  ItemModel({required this.secCategory, required this.item, required this.path, required this.rate});
}

class SecondCategoryModel{
  String mainCategory;
  String category;
  String path;


  SecondCategoryModel({required this.mainCategory, required this.category, required this.path});
}

class CategoryModel {
  String category;
  String icon;

  CategoryModel({this.category = '', required this.icon});
}

class AppBottomBarItem {
  IconData icon;
  bool isSelected;
  String label;

  AppBottomBarItem({
    required this.icon,
    this.label = '',
    this.isSelected = false
  });
}