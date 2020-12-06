import 'dart:math';

import 'package:flutter/material.dart';
import 'package:TRIPOGRAM/trip.dart';
import 'package:TRIPOGRAM/ui/screens/details.dart';
import 'package:TRIPOGRAM/ui/widgets/mybottomnavbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x44afff11),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              left:0,
              right: 0,
              top: 0,
              height: MediaQuery.of(context).size.height / 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 100,
                    child: Container(
                      color: Color(0x44444444),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Color(0xff12ff21),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 70,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "VASANTH'S TRIP",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .apply(color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      User.profilePicture,
                                      fit: BoxFit.cover,
                                      height: 35,
                                      width: 35,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text(
                                    "${User.fullname}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .apply(
                                            color: MyColors.darkBlue,
                                            fontWeightDelta: 2),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      color: MyColors.red,
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "23",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline
                                          .apply(
                                              color: MyColors.darkBlue,
                                              fontWeightDelta: 2),
                                    ),
                                    TextSpan(
                                      text: "Travelers points",
                                      style: Theme.of(context)
                                          .textTheme
                                          .body2
                                          .apply(color: MyColors.darkBlue),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(25.0),
                              color: MyColors.red,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "My next trip",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline
                                          .apply(color: Colors.white),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "28",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    "Dec",
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    "2020",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .apply(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "BOOKED BY YOU",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .apply(color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: destinationsList.length,
                        itemBuilder: (ctx, i) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => DetailsScreen(id: i),
                              ),
                            ),
                            child: Container(
                              width: 150,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 11.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Image.network(
                                        destinationsList[i].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                                        decoration: BoxDecoration(
                                          color: MyColors.lighterBlue,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                                "${destinationsList[i].placeName}",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white)),
                                            Text(
                                              "${destinationsList[i].date}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle
                                                  .apply(color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              height: 70,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: MyBottomNavBar(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
