import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/controllers/StateController.dart';
import 'package:flutter_squid_game/screens/PhoneCallScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  CardScreen({Key? key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  late FlipCardController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image.asset(
                "assets/logo.png",
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 25,
              ),
              height: 170,
              width: double.infinity,
              child: FlipCard(
                controller: _controller,
                fill: Fill.fillBack,
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/cts.png",
                        color: Colors.black,
                        scale: 1.7,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/bb.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                back: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/bfl.png",
                    color: Colors.black87,
                    scale: 2,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/bb.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.orbitron(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kOrange,
                ),
                text: "You can make big money playing games for a few days. \n",
                children: [
                  TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    text: "Would you like to give it a try?",
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.orbitron(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kOrange,
                ),
                text: "We don't have many spots left. \n",
                children: [
                  TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    text: "Give me a call.",
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            InkWell(
              onTap: () {
                setState(() {
                  StateController.to.gameState.value = 1;
                  Get.to(() => PhoneCallScreen());
                });
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: kOrange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "8650 4006",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
