import 'package:flutter/material.dart';
import 'package:henry_portfolio_card/controller/get_profile_links_list.dart';
import 'package:henry_portfolio_card/model/profile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required Profile? profileData})
      : _profile = profileData!,
        super(key: key);

  final Profile _profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 320,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: const Color(0xFFF0F0F0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(48.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                CircleAvatar(
                  foregroundImage:
                      AssetImage(_profile.getProfileImageLocation!),
                  radius: 80.0,
                ),
                const Spacer(),
                Text(
                  _profile.getFirstName! + ' ' + _profile.getLastName!,
                  style: const TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  _profile.getShortProfileDescription!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: getProfileLinksList(context, _profile),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Designed and Developed by Henry Le',
              style: TextStyle(
                color: Color(0xFFF0F0F0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
