import 'package:doktor/features/domain/entities/my_chat_entity.dart';
import 'package:doktor/features/domain/repositories/firebase_repository.dart';

class GetAppointmentUseCase{
  final FirebaseRepository repository;

  GetAppointmentUseCase({this.repository});

 Stream<List<MyChatEntity>> call(String uid){
  return repository.getAppointments(uid);
 }
}