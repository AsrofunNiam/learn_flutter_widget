import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ViewHttp extends StatefulWidget {
  const ViewHttp({Key? key}) : super(key: key);

  @override
  State<ViewHttp> createState() => _ViewHttpState();
}

class _ViewHttpState extends State<ViewHttp> {
  // PostResult postResult=null;
  User? user=null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Http Request")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text((user != null)
              
              ? user!.name! : "datakosong"
              ),


              // Text((user! !=nu)),
              const Text("ini Data id"),
             const SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    User.connecToApi("2").then((value) {
                      user=value;
                      setState(() {
                        
                      });
                    });
                    // print("object data get");
                  },
                  child: const Text(
                    "Get",
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          ),
        ));
  }
}

class User {
  String? id;
  String? name;
  String? lastname;

  User({this.id, this.name, this.lastname});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      name: object['first_nam'],
      lastname: object['last_name'],
    );
  }

  static Future<User?> connecToApi(String id) async {
    dynamic apiUrl = 'https://reqres.in/api/users/' + id;
    var apiResult = await http.get(apiUrl);
    var jsonObject = jsonDecode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}
