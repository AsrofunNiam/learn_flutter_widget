import 'package:flutter/material.dart';

class ViewTextField1 extends StatefulWidget {
  const ViewTextField1({Key? key}) : super(key: key);

  @override
  State<ViewTextField1> createState() => _ViewTextField1State();
}

class _ViewTextField1State extends State<ViewTextField1> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String? valueUserName, valueUserPassword;
  bool? deleteName, deletePassword;

  void clearState() {
  username.clear();
  password.clear();
  // super.initState();
  }
  void saveState() {
    
    // username.text = ""; //innitail value of text field
    // password.text = "";
    // super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" TextField "),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            TextField(
              controller: username,
              decoration: const InputDecoration(
                labelText: "Username",
                icon: Icon(Icons.people),
              ),
              onChanged: ((valueName) {
                setState(() {
                  valueUserName=valueName;
                  
                });
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye)),
              onSubmitted: ((valuePassword) {
                setState(() {
                  valueUserPassword=valuePassword;
                });
              }),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  clearState();
                },
                child: const Text("Clean Text ")),
            ElevatedButton(
                onPressed: () {
                  clearState();
                },
                child: const Text("Save value ")),
            const SizedBox(
              height: 10,
            ),
            // Text(username.text),
            // Text(password.text),
            Container(
              child: Column(
                children: [
                  Text(
                    valueUserName.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                  Text(valueUserPassword.toString()),
                ],
              ),
              height: 100,
              width: 200,
              color: Colors.red,
            )
          ]),
        ),
      ),
    );
  }
}
