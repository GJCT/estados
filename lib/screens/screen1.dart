import 'package:estados/controllers/user.dart';
import 'package:estados/models/users.dart';
import 'package:estados/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
   
  const Screen1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Obx(
        () => userController.existeUser.value 
        ? InfoUsers(user: userController.user.value) 
        : const NoInfo() 
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.last_page),
        onPressed: () => Get.toNamed('2'),
        //onPressed: () => Navigator.pushReplacementNamed(context, '2'),
      ),
    );
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Text('No hay información para mostrar'),
      ),
    );
  }
}


class InfoUsers extends StatelessWidget {

  final Users user;

  const InfoUsers({Key? key, required this.user}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          const Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const Divider(),

          ListTile(title: Text('Nombre: ${user.name}'),),
          ListTile(title: Text('Edad: ${user.year}'),),

          const Text('Profesiones'),
          const Divider(),
          
          ...user.profesions!.map((e) => ListTile(
            title: Text(e)
          ))
        ],
      ),
    );
  }
}