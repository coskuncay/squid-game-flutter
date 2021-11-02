import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/controllers/StateController.dart';
import 'package:flutter_squid_game/screens/GameListScreen.dart';
import 'package:flutter_squid_game/screens/NavbarScreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  bool takenPhoto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavbarScreen(),
      appBar: AppBar(
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
              // backgroundImage:
              //     NetworkImage("${snapshot.data.hitsList[index].previewUrl}"),
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
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Icon(
                  Icons.camera_alt,
                  size: 50,
                  color: takenPhoto ? Colors.white12 : Colors.white,
                ),
              ),
              Image.asset(
                takenPhoto ? "assets/takenphoto.png" : "assets/smile.png",
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (takenPhoto) {
                      //
                      StateController.to.takenPhoto.value = true;
                      Get.off(() => GameListScreen());
                    } else {
                      takenPhoto = true;
                    }
                  });
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.15,
                  decoration: BoxDecoration(
                    color: takenPhoto ? kPurple : kOrange,
                  ),
                  child: Center(
                    child: Text(
                      takenPhoto ? "Approve" : "Take a Photo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
