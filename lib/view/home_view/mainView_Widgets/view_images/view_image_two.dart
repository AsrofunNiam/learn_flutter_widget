import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ViewImageTwo extends StatefulWidget {
  const ViewImageTwo({Key? key}) : super(key: key);

  @override
  State<ViewImageTwo> createState() => _ViewImageTwoState();
}

class _ViewImageTwoState extends State<ViewImageTwo> {
  File? imageFiel;

  void callImage() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file?.path == null) {
      // print("null cuy");
    } else {
      setState(() {
        imageFiel = File(file!.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          child: imageFiel == null
              ? Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        // color: Colors.greenAccent,
                        onPressed: () {
                          callImage();
                        },
                        child: const Text("PICK "),
                      ),
                      Container(
                        width: 40,
                        height: 40.0,
                        color: Colors.red,
                      ),
                    ],
                  ),
                )
              : Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Image.file(
                    imageFiel!,
                    fit: BoxFit.cover,
                  ),
                )),
    ));
  }
}
