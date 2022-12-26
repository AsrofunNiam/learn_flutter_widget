import 'package:flutter/material.dart';

class data {
  int id;
  int fact_id;
  String fact;
  String image;
  String reference;

  data(this.id, this.fact_id, this.fact, this.image, this.reference);

  data.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        fact_id = json['fact_id'],
        fact = json['fact'],
        image = json['image'],
        reference = json['reference'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'fact_id': fact_id,
        'fact': fact,
        'image': image,
        'reference': reference,
      };
}

class ViewFutureBuilder1 extends StatefulWidget {
  const ViewFutureBuilder1({Key? key}) : super(key: key);

  @override
  State<ViewFutureBuilder1> createState() => _ViewFutureBuilder1State();
}

class _ViewFutureBuilder1State extends State<ViewFutureBuilder1> {
  // Future getData() async {

  //       //get data from api
  //       var dataJson = (Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian'));

  //       var data2=jsonDecode(dataJson.userInfo);
  //       return data2['meal'];
  //     }

  //   getSeafood() async {
  //   var response =  await("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian");
  //   return jsonDecode(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //       //   children:[
    //       //   // const Text("stream")
    //       // ]),
    //     )
    //     )
    // )
  }
}
