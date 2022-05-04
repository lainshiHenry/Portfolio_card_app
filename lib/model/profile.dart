class Profile {
  final String? _firstName;
  final String? _lastName;
  final String? _shortProfileDescription;
  final String? _profileImageLocation;

  Profile({
    required String? firstName,
    String? lastName = '',
    String? shortProfileDescription = '',
    required String? profileImageLocation,
  })  : _firstName = firstName,
        _lastName = lastName,
        _shortProfileDescription = shortProfileDescription,
        _profileImageLocation = profileImageLocation;

  String? get getFirstName => _firstName;
  String? get getLastName => _lastName;
  String? get getShortProfileDescription => _shortProfileDescription;
  String? get getProfileImageLocation => _profileImageLocation;
}
