import 'package:flutter/material.dart';

class MyColors {
  static Color darkBlue = Color(0xff2446a6),
      lightBlue = Color(0xff3a5fc8),
      lighterBlue = Color(0x22222222),
      red = Color(0xffff1111);
}

class User {
  static String fullname = "Chennai",
      profilePicture =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-3XXNjBd0Clx0Ztvrutrth8vKMyI2yZ0Bvg&usqp=CAU";
}

class DestinationModel {
  final String placeName, imageUrl, date, hotelName;
  DestinationModel({this.placeName, this.imageUrl, this.date, this.hotelName});
}

final List<DestinationModel> destinationsList = [
  DestinationModel(
    date: "01 Jan, 2021",
    hotelName: "Atrium",
    imageUrl: "https://media-cdn.tripadvisor.com/media/photo-s/04/48/11/bd/shiv-temple.jpg",
    placeName: "Salem",
  ),
  DestinationModel(
    date: "22 Dec,2020",
    hotelName: "Sterling Kodai",
    imageUrl: "https://www.holidify.com/images/bgImages/KODAIKANAL.jpg",
    placeName: "Kodaikannal",
  ),
  DestinationModel(
    date: "30 Mar,2021",
    hotelName: "Hotel Le Jardin",
    imageUrl: "https://www.holidify.com/images/compressed/2383.jpg?v=1.1",
    placeName: "Darjling",
  ),
];
