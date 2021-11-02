import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/controllers/StateController.dart';
import 'package:flutter_squid_game/screens/NavbarScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerListScreen extends StatefulWidget {
  PlayerListScreen({Key? key}) : super(key: key);

  @override
  _PlayerListScreenState createState() => _PlayerListScreenState();
}

class _PlayerListScreenState extends State<PlayerListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavbarScreen(),
      appBar: AppBar(
        backgroundColor: kLightBlue,
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Player List",
                style: TextStyle(
                  color: kWhite,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/playerlist.png",
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  children: [
                    Text(
                      "Total Players:",
                      style: TextStyle(
                        color: kWhite,
                      ),
                    ),
                    Text(
                      "456",
                      style: TextStyle(
                        color: kPurple,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  children: [
                    Text(
                      "Number of Players Remaining:",
                      style: TextStyle(
                        color: kWhite,
                      ),
                    ),
                    Text(
                      "201",
                      style: TextStyle(
                        color: kPurple,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Divider(
                color: kWhite,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  children: [
                    Text(
                      "Total Reward",
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "200.100.000.000 W",
                      style: TextStyle(
                        color: kPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
