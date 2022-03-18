import 'package:doktor/features/domain/entities/user_entity.dart';
import 'package:doktor/features/domain/repositories/firebase_repository.dart';

class GetCreateCurrentUserUseCase{
  final FirebaseRepository repository;

  GetCreateCurrentUserUseCase({this.repository});

  Future<void> call(UserEntity user){
    return repository.getCreateCurrentUser(user);
  }
}