import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Home(),
  ),
);

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is my first flutter App'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      
      body:Column(
        children: [
          Text(
            'hello world',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower'
            ),
          ),
          Image(image: NetworkImage('https://th.bing.com/th/id/R.3fd310a084fa6d44b3b00ec322268ad6?rik=EybTHY%2bawgddBA&riu=http%3a%2f%2f3.bp.blogspot.com%2f-_4uTSk4-asA%2fT1_TopmjxxI%2fAAAAAAAAE1k%2fChRe5rhxjkk%2fs1600%2fHigh_Definition_Wallpaper_100.jpg&ehk=9rBXlPPcytt67iWlWb8DMBO6nRQzYaNMoqkYDXPpZKQ%3d&risl=&pid=ImgRaw&r=0')),
          Image(image: AssetImage('assets/Screenshot (5).jpg'))
        ],
      ),
    );
  }
}
