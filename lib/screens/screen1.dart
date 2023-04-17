import 'package:estados/models/user.dart';
import 'package:estados/services/user.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
   
  const Screen1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: StreamBuilder(
        stream: usersServices.userStream,
        builder: (BuildContext context, AsyncSnapshot<User> snapshot){
          
          return snapshot.hasData
            ? InfoUsers( user: snapshot.data, )
            : const Center(child: Text( 'No hay información del usuario' ) );

        },
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.last_page),
        onPressed: () => Navigator.pushReplacementNamed(context, '2'),
      ),
    );
  }
}

class InfoUsers extends StatelessWidget {

final User? user;
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

          ListTile(title: Text('Nombre: ${user!.name}')),
          ListTile(title: Text('Nombre: ${user!.year}')),

          const Text('data'),
          const Divider(),

          ListTile(title: Text('Nombre: ${user!.profesions}')),
          ListTile(title: Text('Nombre: ${user!.profesions}')),
          ListTile(title: Text('Nombre: ${user!.profesions}'))
        ],
      ),
    );
  }
}