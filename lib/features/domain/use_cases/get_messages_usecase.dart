import 'package:doktor/features/domain/entities/text_messsage_entity.dart';
import 'package:doktor/features/domain/repositories/firebase_repository.dart';

class GetMessageUseCase{
  final FirebaseRepository repository;

  GetMessageUseCase({this.repository});

 Stream<List<TextMessageEntity>> call(String channelId){
  return repository.getMessages(channelId);
 }
}