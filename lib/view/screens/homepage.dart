import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        return Center(
          child: Container(
            width: orientation == Orientation.portrait ? 300 : 500,
            height: orientation == Orientation.portrait ? 500 : 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: const Color(0xFFF0F0F0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: orientation == Orientation.portrait
                  ? Column(
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
                    )
                  : Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Spacer(),
                            CircleAvatar(
                              foregroundImage:
                                  AssetImage(_profile.getProfileImageLocation!),
                              radius: orientation == Orientation.portrait
                                  ? 80.0
                                  : 65.0,
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // mainAxisSize: MainAxisSize.min,
                              children: getProfileLinksList(context, _profile),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20.0),
                        SizedBox(
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _profile.getFirstName! +
                                    ' ' +
                                    _profile.getLastName!,
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
                                style: const TextStyle(
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      }),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Designed and Developed by Henry Le. Made with Flutter ',
              style: TextStyle(
                color: Color(0xFFF0F0F0),
              ),
            ),
            FaIcon(
              FontAwesomeIcons.solidHeart,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
