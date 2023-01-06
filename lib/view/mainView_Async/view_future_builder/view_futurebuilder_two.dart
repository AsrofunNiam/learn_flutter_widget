import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewFutureBuilderTwo extends StatelessWidget {
  // const ViewFutureBuilderTwo({Key? key}) : super(key: key);

  Future<Map<String, dynamic>> getData1() async {
    try {
      var hasilGet1 =
          await http.get(Uri.parse('https://reqres.in/api/users/2'));
      if (hasilGet1.statusCode == 200) {
        var dataOne =
            json.decode(hasilGet1.body)['data'] as Map<String, dynamic>;
        print(dataOne);
        return dataOne;
      } else {
        print("Error di ${hasilGet1.statusCode}");
        throw (hasilGet1.statusCode);
      }
    } catch (err) {
      rethrow;
    }

    // print(json.decode(hasilGet1.body)['data']['id']);
  }

  getData2() async {
    String lastNamed;
    String firstNAmed;
    final data;
    // http.get(Uri.parse('http://staging.foxlogger.com:9042/mobile/user-data/83705'));
    var hasilGet2 = await http.get(
        Uri.parse('http://staging.foxlogger.com:9042/mobile/user-data/83705'));
    // print(hasilGet.body);
    // print(json.decode(hasilGet.body)['g_user_id']);
    print(json.decode(hasilGet2.body)['ptv_ctow']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Future Builder Two")),
      ),
      body: FutureBuilder(
        future: getData1(),
        builder: ((context, snapshot) {
          if (snapshot.error != null) {
            return const Center(
              child: Icon(Icons.error),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            print(snapshot.data);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    color: const Color.fromARGB(255, 228, 208, 206),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "name : ${snapshot.data!.toString()}",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "name",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {
                            getData1();
                          },
                          child: const Text(
                            "get 1",
                            style: TextStyle(fontSize: 30),
                          )),
                      TextButton(
                          onPressed: () {
                            getData2();
                          },
                          child: const Text(
                            "get 2",
                            style: TextStyle(fontSize: 30),
                          )),
                    ],
                  )
                ],
              ),
            );
          }
        }),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 400,
      //         width: 400,
      //         color: const Color.fromARGB(255, 228, 208, 206),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: const <Widget>[
      //             Text(
      //               "name",
      //               style: TextStyle(fontSize: 30),
      //             ),
      //             Text(
      //               "name",
      //               style: TextStyle(fontSize: 30),
      //             ),
      //           ],
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           TextButton(
      //               onPressed: () {
      //                 getData1();
      //               },
      //               child: const Text(
      //                 "get 1",
      //                 style: TextStyle(fontSize: 30),
      //               )),
      //           TextButton(
      //               onPressed: () {
      //                 getData2();
      //               },
      //               child: const Text(
      //                 "get 2",
      //                 style: TextStyle(fontSize: 30),
      //               )),
      //         ],
      //       )
      //     ],
      //   ),
      // )
    );
  }
}
