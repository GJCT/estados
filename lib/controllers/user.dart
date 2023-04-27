import 'package:estados/models/users.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  
  var existeUser = false.obs;
  var user = Users().obs;

  int get profesionsCount {
    return user.value.profesions!.length;
  }

  void cargarUser(Users userP){
    existeUser.value = true;
    user.value = userP;
  }

  void changeYear(int year){
    user.update((val) {
      val?.year = year; 
    });
  }

  void addProfesion(String profesion){
    user.update((val) {
      val?.profesions = [...val.profesions!, profesion];
    });
  }
}