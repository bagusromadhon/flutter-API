import 'package:flutter/material.dart';
import 'package:flutter_application_1/post_result_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: avoid_init_to_null
  PostResult? postResult = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult!.id +
                      " | " +
                      postResult!.name +
                      " | " +
                      postResult!.job +
                      " | " +
                      postResult!.created
                  : "Tidak Ada Data  "),
              RaisedButton(onPressed: () {
                PostResult.connectToAPI("badu", "Dokter").then((value){
                postResult = value;
                setState(() {
                  
                });
                });
              },
               child: Text("POST")),
            ],
          ),
        ),
      ),
    );
  }
}
