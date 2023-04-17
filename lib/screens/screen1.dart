import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
   
  const Screen1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: const InfoUsers(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.last_page),
        onPressed: () => Navigator.pushReplacementNamed(context, '2'),
      ),
    );
  }
}

class InfoUsers extends StatelessWidget {
  const InfoUsers({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: const[
          Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),

          ListTile(),
          ListTile(),

          Text('data'),
          Divider(),

          ListTile(),
          ListTile(),
          ListTile()
        ],
      ),
    );
  }
}