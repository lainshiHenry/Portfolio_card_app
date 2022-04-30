import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final String _profileImage = 'assets/27880002.jpeg';
  final String _firstName = 'Henry';
  final String _lastName = 'Le';

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
                  foregroundImage: AssetImage(_profileImage),
                ),
                const Spacer(),
                Text(_firstName + ' ' + _lastName),
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
