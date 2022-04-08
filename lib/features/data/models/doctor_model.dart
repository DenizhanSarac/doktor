import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doktor/features/domain/entities/doctor_entity.dart';

class DoctorModel extends DoctorEntity {
  DoctorModel({
    String doctorName,
    String specialist,
    String timing,
    String department,
    String profileImage,
    String gender,
    String phoneNumber,
    String email,
    String descriptionDetails,
    String hospitalAddress,
    String qualification,
    String doctorId,
  })
      : super(
          doctorName:doctorName,
          specialist:specialist,
          timing:timing,
          department:department,
          profileImage:profileImage,
          gender:gender,
          phoneNumber:phoneNumber,
          email:email,
          descriptionDetails:descriptionDetails,
          hospitalAddress:hospitalAddress,
          qualification:qualification,
          doctorId:doctorId,
        );
  factory DoctorModel.fromSnapShot(DocumentSnapshot snapshot){
    return DoctorModel(
      doctorName: snapshot['doctorName'],
      specialist: snapshot['specialist'],
      timing: snapshot['timing'],
      department: snapshot['department'],
      profileImage: snapshot['profileImage'],
      gender: snapshot['gender'],
     phoneNumber: snapshot['phoneNumber'],
      email: snapshot['email'],
      descriptionDetails: snapshot['descriptionDetails'],
      hospitalAddress: snapshot['hospitalAddress'],
      qualification: snapshot['qualification'],
      doctorId: snapshot['doctorId'],
    );
  }
}
