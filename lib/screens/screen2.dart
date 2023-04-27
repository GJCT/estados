import 'package:estados/controllers/user.dart';
import 'package:estados/models/users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
   
  const Screen2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final userCtrl = Get.find<UserController>();


    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text('Establecer', style: TextStyle(color: Colors.white),),
              color: Colors.black54,
              onPressed: () {
                userCtrl.cargarUser(Users(name: 'Gabriel', year: 24));
                Get.snackbar(
                  'Usuario establecido', 
                  'Gabriel es el nombre establecido',
                  backgroundColor: Colors.amber,
                  boxShadows:  [
                    const BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15
                    )
                  ]  
                );
              }
            ),
            MaterialButton(
              child: const Text('Edad', style: TextStyle(color: Colors.white),),
              color: Colors.black54,
              onPressed: () =>userCtrl.changeYear(25)),
            MaterialButton(
              child: const Text('Profesión', style: TextStyle(color: Colors.white),),
              color: Colors.black54,
              onPressed: () => userCtrl.addProfesion('Profesion: #${userCtrl.profesionsCount + 1}'),
            ),
          ],
         ),
      ),
    );
  }
}