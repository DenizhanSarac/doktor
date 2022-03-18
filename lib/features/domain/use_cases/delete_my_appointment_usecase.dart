import 'package:doktor/features/domain/entities/my_chat_entity.dart';
import 'package:doktor/features/domain/repositories/firebase_repository.dart';

class DeleteMyAppointmentUseCase{
  final FirebaseRepository repository;

  DeleteMyAppointmentUseCase({this.repository});

  Future<void> call(MyChatEntity chatEntity){
    return repository.deleteMyAppointment(chatEntity);
  }
}