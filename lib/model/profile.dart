class Profile {
  final String? _firstName;
  final String? _lastName;
  final String? _shortProfileDescription;
  final String? _profileImageLocation;
  final String? _githubLink;
  final String? _linkedInLink;
  final String? _twitterLink;
  final String? _emailAddress;

  Profile({
    required String? firstName,
    String? lastName = '',
    String? shortProfileDescription = '',
    required String? profileImageLocation,
    String? githubLink = '',
    String? linkedInLink = '',
    String? twitterLink = '',
    String? emailAddress = '',
  })  : _firstName = firstName,
        _lastName = lastName,
        _shortProfileDescription = shortProfileDescription,
        _profileImageLocation = profileImageLocation,
        _githubLink = githubLink,
        _linkedInLink = linkedInLink,
        _twitterLink = twitterLink,
        _emailAddress = emailAddress;

  String? get getFirstName => _firstName;
  String? get getLastName => _lastName;
  String? get getShortProfileDescription => _shortProfileDescription;
  String? get getProfileImageLocation => _profileImageLocation;

  String? get getGitHubLink => _githubLink;
  String? get getLinkedInLink => _linkedInLink;
  String? get getTwitterLink => _twitterLink;
  String? get getEmailAddress => _emailAddress;
}
