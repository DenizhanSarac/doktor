import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:cloud_firestore_platform_interface/src/geo_point.dart';
import 'package:doktor/features/domain/entities/hospital_entity.dart';

class HospitalModel extends HospitalEntity {
  HospitalModel({
  String hospitalFullAddress,
  String hospitalPicUrl,
  String emergency,
  String hospitalId,
  String hospitalName,
  GeoPoint location,
  List<String> departments,
  })
      : super(hospitalFullAddress:hospitalFullAddress, hospitalPicUrl:hospitalPicUrl, emergency:emergency, hospitalId:hospitalId,
  hospitalName:hospitalName, location:location, departments:departments,);

  factory HospitalModel.fromSnapShot(DocumentSnapshot snapshot){
    return HospitalModel(
      hospitalFullAddress: snapshot['hospitalFullAddress'],
      hospitalPicUrl: snapshot['hospitalPicUrl'],
      emergency: snapshot['emergency'],
      hospitalId: snapshot['hospitalId'],
      hospitalName: snapshot['hospitalName'],
      location: snapshot['location'],
      departments: List<String>.from(snapshot['departments']),
    );
  }

}
