import 'package:user_repository/src/entities/entities.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCard;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCard
  });

  static final empty = MyUser(userId: '', 
  email: '', 
  name: '', 
  hasActiveCard: false);

  MyUserEntity toEntity() {
    return MyUserEntity(
      userId : userId,
      email : email,
      name : name,
      hasActiveCard : hasActiveCard,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      userId : entity.userId,
      email : entity.email,
      name : entity.name,
      hasActiveCard : entity.hasActiveCard,
    );
  }
}