import 'package:customtoggleswitch/customtoggleswitch.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            custom_toggle_switch(
              inactiveTextColor: Colors.blue,
              activeTextColor: Colors.lightGreenAccent,
              inactiveText: "off",
              inactiveColor:Colors.orange,
              activeText: "On",
              activeColor: Colors.pinkAccent,
              value: status,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
              },
            ),
            SizedBox(height: 12.0,),
            Text('Value : $status', style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),)
          ],
        ),
      ),
    );
  }
}