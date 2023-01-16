
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
   /* return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child:InkWell(
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("email :${FirebaseAuth.instance.currentUser!.email}"),
                SizedBox(height: 10,),
                Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Logout", style: TextStyle(fontSize: 15, color: Colors.white),) ,),
                ),
              ],
            ),
          ),
        ),
      ),
    );*/
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: showBottomSheet,
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Todo App'),
        centerTitle: true,
      ),
      body: Center(child: Text('Our Todo Will Be Here')),
    );
  }
}
Widget showBottomSheet(BuildContext context) {
  String? value;
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Add Todo',
              hintText: 'Enter An Item',
            ),
            onChanged: (String _val) {
              value = _val;
            },
          ),
        ),
        TextButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.lightBlueAccent)),
            onPressed: () {
              // Todo: The Create Functionality will be here
            },
            child: const Text(
              'ADD',
              style: TextStyle(color: Colors.white),
            ))
      ],
    ),
  );
}
