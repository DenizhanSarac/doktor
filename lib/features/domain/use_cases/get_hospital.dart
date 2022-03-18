import 'package:doktor/features/domain/entities/hospital_entity.dart';
import 'package:doktor/features/domain/repositories/firebase_repository.dart';

class GetHospitalUseCase{
  final FirebaseRepository repository;

  GetHospitalUseCase({this.repository});

  Stream<List<HospitalEntity>> call(){
    return repository.getHospitals();
  }
}