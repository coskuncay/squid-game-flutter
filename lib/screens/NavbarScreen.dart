import 'package:flutter/material.dart';
import 'package:flutter_squid_game/screens/AgreementScreen.dart';
import 'package:flutter_squid_game/screens/CameraScreen.dart';
import 'package:flutter_squid_game/screens/GameListScreen.dart';
import 'package:flutter_squid_game/screens/PlayerListScreen.dart';
import 'package:flutter_squid_game/screens/VoteScreen.dart';
import 'package:get/get.dart';

class NavbarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          ListTile(
            leading: Icon(
              Icons.gamepad_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Games',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () => {Get.off(() => GameListScreen())},
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(
              Icons.people_alt_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Players',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () => {Get.off(() => PlayerListScreen())},
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () => {Get.off(() => CameraScreen())},
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(
              Icons.how_to_vote_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Vote',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () => {Get.off(() => VoteScreen())},
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(
              Icons.description_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Agreement',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () => {Get.off(() => AgreementScreen())},
          )
        ],
      ),
    );
  }
}
