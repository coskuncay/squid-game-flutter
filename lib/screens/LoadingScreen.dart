import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/screens/CardScreen.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 12), () => Get.off(CardScreen()));

    return Scaffold(
      backgroundColor: kBackground,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/loading.json'),
            SizedBox(
              height: 40,
            ),
            RichText(
              text: TextSpan(
                text: "Squid Game Flutter UI Concept by ",
                style: TextStyle(
                  fontSize: 13,
                ),
                children: [
                  TextSpan(
                    text: "Emre Coşkunçay",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            // Text(
            //   "Drew Solorio",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 11,
            //     fontStyle: FontStyle.italic,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
