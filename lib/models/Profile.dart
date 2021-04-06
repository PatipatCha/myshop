// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  Profile({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.image,
  });

  int id;
  String firstname;
  String lastname;
  String email;
  String image;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"] == null ? null : json["id"],
        firstname: json["firstname"] == null ? null : json["firstname"],
        lastname: json["lastname"] == null ? null : json["lastname"],
        email: json["email"] == null ? null : json["email"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "firstname": firstname == null ? null : firstname,
        "lastname": lastname == null ? null : lastname,
        "email": email == null ? null : email,
        "image": image == null ? null : image,
      };
}
