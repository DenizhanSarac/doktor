import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doktor/features/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    String name,
    String email,
    String uid,
    String profileUrl,
    String accountType,
    bool isOnline,
    String isHide,
  }) : super(
    name: name,
    email: email,
    uid: uid,
    profileUrl: profileUrl,
    accountType: accountType,
    isOnline: isOnline,
    isHide: isHide,
  );

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    return UserModel(
      name: snapshot['name'],
      email: snapshot['email'],
      uid: snapshot['uid'],
      profileUrl: snapshot['profileUrl'],
      accountType: snapshot['accountType'],
      isOnline: snapshot['isOnline'],
      isHide: snapshot['isHide'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
      "profileUrl": profileUrl,
      "accountType": accountType,
      "isOnline": isOnline,
      "isHide": isHide,
    };
  }
}
