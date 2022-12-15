import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("$i"),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  i++;
                });
              },
              child: Icon(Icons.add),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  i--;
                });
              },
              child: Icon(Icons.exposure_minus_1),
            ),
          ],
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                i = i * 2;
              });
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
