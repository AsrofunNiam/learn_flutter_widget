import 'package:flutter/material.dart';

class ViewImages1 extends StatelessWidget {
  const ViewImages1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                  child: const SizedBox(
                    height: 100,
                    width: 100,
                    child: Image(
                      image: AssetImage("assets/image/snake.jpg"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                  padding: const EdgeInsets.all(10),
                  child: const Image(
                    image: AssetImage("assets/image/koala.jpg"),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
