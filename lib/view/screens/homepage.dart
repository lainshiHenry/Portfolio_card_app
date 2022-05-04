import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:henry_portfolio_card/model/profile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required Profile? profileData})
      : _profile = profileData!,
        super(key: key);

  final Profile _profile;

  final List<String> _linkNames = ['GitHub', 'LinkedIn', 'Email'];
  final List<String> _linkURL = ['a', 'b', 'c'];
  final List<FaIcon> _listIcons = [
    const FaIcon(FontAwesomeIcons.github),
    const FaIcon(FontAwesomeIcons.linkedin),
    const FaIcon(FontAwesomeIcons.envelope),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: 400,
          height: 500,
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
                  minRadius: 60.0,
                  maxRadius: 100.0,
                ),
                const Spacer(),
                Text(
                  _profile.getFirstName! + ' ' + _profile.getLastName!,
                  style: const TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(_profile.getShortProfileDescription!),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: _listIcons,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              _linkNames.length,
              (index) => TextButton(
                    child: Text(
                      _linkNames[index],
                    ),
                    onPressed: () {},
                  )),
        ),
      ),
    );
  }
}
