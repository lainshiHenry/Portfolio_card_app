import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:henry_portfolio_card/model/constants.dart';
import 'package:henry_portfolio_card/model/profile.dart';

List<Widget> getProfileLinksList(BuildContext context, Profile profile) {
  List<IconButton> _resultList = List.empty(growable: true);
  IconButton? _temp;

  _temp = checkIfProfileHasLink(context,
      linkToCheck: profile.getGitHubLink!, socialLink: Links.github);
  if (_temp != null) {
    _resultList.add(_temp);
  }

  _temp = checkIfProfileHasLink(context,
      socialLink: Links.linkedin, linkToCheck: profile.getLinkedInLink!);
  if (_temp != null) {
    _resultList.add(_temp);
  }

  _temp = checkIfProfileHasLink(context,
      socialLink: Links.twitter, linkToCheck: profile.getTwitterLink!);
  if (_temp != null) {
    _resultList.add(_temp);
  }

  _temp = checkIfProfileHasLink(context,
      socialLink: Links.email, linkToCheck: profile.getEmailAddress!);
  if (_temp != null) {
    _resultList.add(_temp);
  }

  return _resultList;
}

IconButton? checkIfProfileHasLink(BuildContext context,
    {required Links socialLink,
    Widget? iconImage,
    required String linkToCheck}) {
  if (linkToCheck.isNotEmpty) {
    return IconButton(
      icon: linksListIcon[socialLink.index],
      onPressed: () {
        print(linkToCheck);
        if (socialLink == Links.email) {
          js.context.callMethod('open', ['mailTo:' + linkToCheck]);
        } else {
          js.context.callMethod('open', [linkToCheck]);
        }
      },
    );
  } else {
    return null;
  }
}
