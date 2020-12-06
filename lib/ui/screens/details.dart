import 'dart:math';

import 'package:flutter/material.dart';
import 'package:TRIPOGRAM/trip.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff510000),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.network(
                            destinationsList[id].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 5,
                          child: IconButton(
                            icon: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          height: 70,
                          child: Container(
                            decoration: BoxDecoration(
                            //  gradient: LinearGradient(
                             //   colors: [
                              //    Colors.transparent,
                               //   MyColors.darkBlue,
                             //   ],
                              //  begin: Alignment.topCenter,
                              //  end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                       // )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${destinationsList[id].hotelName}",
                            style: Theme.of(context).textTheme.display1.apply(
                                  color: Colors.white,
                                ),
                          ),
                          Text(
                            "${destinationsList[id].placeName} - ${destinationsList[id].date}",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle
                                .apply(color: Colors.white70),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Rs.12000",
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    "5 nights - 6 days",
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .apply(color: Colors.white70),
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: CircularProgressIndicator(
                                        value: .45,
                                        backgroundColor: MyColors.lighterBlue,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.brightness_3,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "24 Days",
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    "until trip",
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .apply(color: Colors.white70),
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: CircularProgressIndicator(
                                        value: .25,
                                        backgroundColor: MyColors.lighterBlue,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.calendar_today_sharp,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 10,
              color: MyColors.lighterBlue,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.map,
                        color: Colors.yellowAccent,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.cloud,
                        color: Colors.indigo,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                          ),
                          color: MyColors.red,
                        ),
                        child: Transform.rotate(
                          angle: -pi / 2,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "",
                                  style: Theme.of(context)


                                      .textTheme
                                      .body1
                                      .apply(color: Colors.white),
                                ),
                              ),
                              Expanded(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.assistant_navigation,

                                      color: Colors.white,

                                    ),
                                    onPressed: () => Navigator.pop(context),

                                  )
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
