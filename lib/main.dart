import 'package:flutter/material.dart';
import 'package:flutter_squid_game/constants/style.dart';
import 'package:flutter_squid_game/screens/CardScreen.dart';
import 'package:flutter_squid_game/controllers/StateController.dart';
import 'package:flutter_squid_game/screens/LoadingScreen.dart';
import 'package:flutter_squid_game/screens/PhoneCallScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<StateController>(StateController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        title: 'Squid Game - Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          canvasColor: kLightBlue,
          textTheme: GoogleFonts.orbitronTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: LoadingScreen(),
      ),
    );
  }
}
