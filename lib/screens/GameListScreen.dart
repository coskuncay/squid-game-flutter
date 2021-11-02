import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/controllers/StateController.dart';
import 'package:flutter_squid_game/screens/NavbarScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class GameListScreen extends StatefulWidget {
  GameListScreen({Key? key}) : super(key: key);

  @override
  _GameListScreenState createState() => _GameListScreenState();
}

class _GameListScreenState extends State<GameListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavbarScreen(),
      appBar: AppBar(
        backgroundColor: kLightBlue,
        automaticallyImplyLeading: true,
        title: Image.asset(
          "assets/appbarlogo.png",
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 25.0,
              child: StateController.to.takenPhoto.value
                  ? Image.asset(
                      "assets/ppsmall.png",
                    )
                  : Text(
                      "${StateController.to.userNumber.value}",
                      style: GoogleFonts.orbitron(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
              backgroundColor: kDarkBlue,
            ),
          )
        ],
      ),
      backgroundColor: kBackground,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: GoogleFonts.orbitron(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kOrange,
                  ),
                  text: "Total Reward \n\n",
                  children: [
                    TextSpan(
                      style: GoogleFonts.orbitron(
                        fontSize: 30,
                      ),
                      text: "200.100.000.000 W \n\n",
                    ),
                    TextSpan(
                      style: GoogleFonts.orbitron(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      text:
                          "Allocated prize money for each player, 100 million won.",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "GAMES",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Divider(
                color: kWhite,
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Game #1 - Red Light Green Light",
                          style: TextStyle(
                              color: kWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/game1.png",
                            ),
                            Positioned(
                              child: Container(
                                width: 130,
                                height: 20,
                                color: kOrange,
                                child: Center(
                                  child: Text(
                                    "Accomplished",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              bottom: 10,
                              right: 2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Game #2 - Candy Mold",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/game2.png",
                            ),
                            Positioned(
                              child: Container(
                                width: 130,
                                height: 20,
                                color: kOrange,
                                child: Center(
                                  child: Text(
                                    "Accomplished",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              bottom: 10,
                              right: 2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Game #3",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "assets/game3.png",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Game #4",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "assets/game4.png",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Game #5",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "assets/game5.png",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Game #6",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "assets/game6.png",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
