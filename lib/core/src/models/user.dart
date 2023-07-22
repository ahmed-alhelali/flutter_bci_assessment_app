import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

/*
{
      "name": "name test",
      "phone": "23232355858",
      "email": "ah744555@gmail.com",
      "branch": "branch1",
      "city": "city1",
      "country": "egypt",
      "password": "wewe123@#",
      "age": "22",
      "account": "user",
      "address": "text",
    },
 */
@freezed
class User with _$User {
  const factory User({
    required String name,
    required String phone,
    required String email,
    required String branch,
    required String city,
    required String country,
    required String account,
    required String address,
    required String age,
    required String password,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
