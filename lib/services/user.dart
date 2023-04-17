import 'dart:async';

import 'package:estados/models/user.dart';

class _UsersServices{

  late User _user; 

  final StreamController<User> _userStreamController = StreamController<User>.broadcast();

  User get user => _user;
  // ignore: unnecessary_null_comparison
  bool get existeUser => (_user != null) ? true : false;

  Stream<User> get userStream => _userStreamController.stream;

  void loadUser(User user) {
    _user = user;
    _userStreamController.add(_user);
  }

  void changeYear(int year) {
    _user.year = year;
    _userStreamController.add(_user);
  }

  disponse(){
    _userStreamController.close();
  }

}

// ignore: unnecessary_new
final usersServices = new _UsersServices();

