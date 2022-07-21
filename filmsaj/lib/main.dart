import 'package:filmsaj/repository.dart';
import 'package:flutter/material.dart';

import 'model.dart';
import 'repository.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tolol',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
        home: MyHomePage(title:'control'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Blog> listBlog = [];
  Repository repository = Repository();

  getData() async{
    listBlog = await repository.getData();
    setState(() {
      
    });
  }
  @override

  void initstate(){
    getData();
    super.initState();
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: ListView.separated(itemBuilder: (context, index,){
        return Container(
          child: Text(listBlog[index].title),
        );
      },
       separatorBuilder: (contex, index){
         return Divider();
       },
        itemCount: listBlog.length)
      
    );
  }
}