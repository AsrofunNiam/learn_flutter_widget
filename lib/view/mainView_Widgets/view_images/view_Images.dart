import 'package:flutter/material.dart';

class ViewImage1 extends StatelessWidget {
  const ViewImage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/images/ubur_jpg');
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network('https://picsum.photos/250?image=9',
                ),
                // child: Image.file(
                        // height: 200,
                        // scale: 2.5,
                        // // color: Color.fromARGB(255, 15, 147, 59),
                        // opacity:
                        //     const AlwaysStoppedAnimation<double>(0.5)
                            // ),
              ),
            ),
          ],
        ),
      ),

    
    );
  }
}