import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/controllers/StateController.dart';
import 'package:flutter_squid_game/screens/NavbarScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class VoteScreen extends StatefulWidget {
  VoteScreen({Key? key}) : super(key: key);

  @override
  _VoteScreenState createState() => _VoteScreenState();
}

class _VoteScreenState extends State<VoteScreen> {
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
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset(
                  "assets/vote.png",
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kOrange,
                    ),
                    text: "Vote for Game \n\n",
                    children: [
                      TextSpan(
                        style: GoogleFonts.orbitron(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: kWhite,
                        ),
                        text:
                            "The games may be terminated upon a majority vote.",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Total 201 Players.",
                  style: TextStyle(
                    color: kOrange,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.radio_button_off_outlined,
                  color: Colors.green,
                  size: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: kWhite,
                    ),
                    text: "Keep Playing \n\n",
                    children: [
                      TextSpan(
                        style: GoogleFonts.orbitron(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none,
                          color: kWhite,
                        ),
                        text: "100 Player",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.close_outlined,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: kWhite,
                    ),
                    text: "Stop Game \n\n",
                    children: [
                      TextSpan(
                        style: GoogleFonts.orbitron(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none,
                          color: kWhite,
                        ),
                        text: "101 Player",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
