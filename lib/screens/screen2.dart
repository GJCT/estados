import 'package:estados/models/user.dart';
import 'package:estados/services/user.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
   
  const Screen2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usersServices.userStream,
          builder: (BuildContext context, AsyncSnapshot<User> snapshot){
            return snapshot.hasData
              ? Text('Nombre: ${ snapshot.data?.name }')
              : const Text('Screen 2');
          },
        ),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text('Establecer', style: TextStyle(color: Colors.white),),
              color: Colors.black54,
              onPressed: (){ 

                Navigator.pushReplacementNamed(context, '1');
              },
            ),
            MaterialButton(
              child: const Text('Edad', style: TextStyle(color: Colors.white),),
              color: Colors.black54,
              onPressed: () => Navigator.pushReplacementNamed(context, '1'),
            ),
            MaterialButton(
              child: const Text('Profesión', style: TextStyle(color: Colors.white),),
              color: Colors.black54,
              onPressed: () => Navigator.pushReplacementNamed(context, '1'),
            ),
          ],
         ),
      ),
    );
  }
}