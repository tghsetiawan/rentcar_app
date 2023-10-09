class UserModel {
  late String firstName, lastName, fullName;

  UserModel({
    required this.firstName,
    required this.lastName,
    this.fullName = "",
  });

  // UserModel.fromJson(Map<String, dynamic> json) {
  //   firstName = json['firstName'];
  //   lastName = json['lastName'];
  //   fullName = json['fullName'];
  // }

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        firstName: json['firstName'],
        lastName: json['lastName'],
        fullName: json['fullName'],
      );

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'fullName': "$firstName $lastName"
    };
  }
}
