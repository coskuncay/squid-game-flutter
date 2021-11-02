import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/controllers/StateController.dart';
import 'package:flutter_squid_game/screens/AgreementScreen.dart';
import 'package:flutter_squid_game/screens/CardScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PhoneCallScreen extends StatefulWidget {
  PhoneCallScreen({Key? key}) : super(key: key);

  @override
  _PhoneCallScreenState createState() => _PhoneCallScreenState();
}

class _PhoneCallScreenState extends State<PhoneCallScreen> {
  ScrollController _scrollController = ScrollController();
  TextEditingController _nameController = TextEditingController();
  DateTime? birthDate;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/calllogo.png",
                    scale: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.orbitron(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kOrange,
                      ),
                      text: "8650 4006 \n",
                      children: [
                        TextSpan(
                          text: "\n DIALLING",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kOrange,
                    ),
                    text: "Do you wish to participate in the game? \n",
                    children: [
                      TextSpan(
                        text:
                            "If you wish to participate,please state your name and birthdate.",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: TextFormField(
                        textCapitalization: TextCapitalization.characters,
                        textAlignVertical: TextAlignVertical.center,
                        controller: _nameController,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        onEditingComplete: () {
                          setState(() {
                            FocusScope.of(context).unfocus();
                            saveUsername(_nameController.text);
                          });
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.0,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffe5ba62),
                              width: 3,
                            ),
                          ),
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          minTime: DateTime(1980, 1, 1),
                          maxTime: DateTime(2021, 12, 31),
                          onConfirm: (date) {
                            setState(() {
                              birthDate = date;
                              saveBirthdate(birthDate.toString());
                            });
                          },
                          currentTime: DateTime.now(),
                          locale: LocaleType.en,
                        );
                      },
                      child: Text(
                        birthDate == null
                            ? 'Enter your birthdate'
                            : "${birthDate!.day} / ${birthDate!.month}  / ${birthDate!.year} ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // if (_nameController.text == "" || birthDate == null) {
                  //   //
                  // } else {

                  // }
                  joinGame();
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: (_nameController.text == "" || birthDate == null)
                        ? kOrange.withOpacity(.2)
                        : kOrange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Join the game",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      print("clicked");
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: kLightBlue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("clicked");
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: kLightBlue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.videocam,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("clicked");
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        color: kLightBlue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.volume_off,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    StateController.to.gameState.value = 0;
                    Get.off(() => CardScreen());
                  });
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.call_end,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void joinGame() {
    setState(() {
      StateController.to.gameState.value = 2;
      // saveUserNumber();
      Random random = new Random();
      int randomNumber = random.nextInt(456) + 1;
      StateController.to.userNumber.value = randomNumber;
      Get.to(() => AgreementScreen());
    });
  }
}

saveUsername(username) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String name = (prefs.getString('username') ?? 'yok');
  print(name);
  await prefs.setString('username', username);
}

saveBirthdate(bdate) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String name = (prefs.getString('birthdate') ?? 'yokbd');
  print(name);
  await prefs.setString('birthdate', bdate);
}

saveUserNumber() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int number = (prefs.getInt('userNumber') ?? 0);
  Random random = new Random();
  int randomNumber = random.nextInt(456) + 1;
  print(randomNumber);
  await prefs.setInt('userNumber', randomNumber);
}
