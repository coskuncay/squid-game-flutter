import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/controllers/StateController.dart';
import 'package:flutter_squid_game/screens/CameraScreen.dart';
import 'package:flutter_squid_game/screens/NavbarScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AgreementScreen extends StatefulWidget {
  AgreementScreen({Key? key}) : super(key: key);

  @override
  _AgreementScreenState createState() => _AgreementScreenState();
}

class _AgreementScreenState extends State<AgreementScreen> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _number;

  @override
  void initState() {
    super.initState();
    _number = _prefs.then((SharedPreferences prefs) {
      return (prefs.getInt('userNumber') ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavbarScreen(),
      appBar: StateController.to.agreeRules.value
          ? AppBar(
              backgroundColor: kBackground,
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
            )
          : null,
      backgroundColor: kBackground,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kOrange,
                    ),
                    children: [
                      TextSpan(
                        text: "Player ${StateController.to.userNumber.value}",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: GoogleFonts.orbitron(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kOrange,
                        ),
                        text: "Clause 1: \n",
                        children: [
                          TextSpan(
                            text:
                                "A player is not allowed to voluntarily quit the games.\n",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: GoogleFonts.orbitron(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kOrange,
                        ),
                        text: "Clause 2: \n",
                        children: [
                          TextSpan(
                            text:
                                "A player who refuses to play will be eliminated.\n",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: GoogleFonts.orbitron(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kOrange,
                        ),
                        text: "Clause 3: \n",
                        children: [
                          TextSpan(
                            text:
                                "The games may be terminated upon a majority vote.\n",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Visibility(
                visible: !StateController.to.agreeRules.value,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      StateController.to.gameState.value = 3;
                      StateController.to.agreeRules.value = true;
                      Get.off(() => CameraScreen());
                    });
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: kPurple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "I Agree",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
