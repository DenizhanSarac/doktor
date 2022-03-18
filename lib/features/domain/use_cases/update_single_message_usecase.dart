import 'package:doktor/features/domain/repositories/firebase_repository.dart';

class UpdateSingleMessageUseCase{
  final FirebaseRepository repository;

  UpdateSingleMessageUseCase({this.repository});

  Future<void> call(String channelId,String messageId,bool isOPD){
    return repository.updateSingleMessage(channelId, messageId, isOPD);
  }
}