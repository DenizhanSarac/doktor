import 'package:doktor/features/domain/entities/doctor_entity.dart';
import 'package:doktor/features/domain/repositories/firebase_repository.dart';

class GetHospitalDetailsUseCase{
  final FirebaseRepository repository;

  GetHospitalDetailsUseCase({this.repository});

  Stream<List<DoctorEntity>> call(String hospitalId){
    return repository.getHospitalDetails(hospitalId);
  }
}