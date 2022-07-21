import 'dart:convert';
import 'main.dart';
import 'package:filmsaj/model.dart';
import 'package:http/http.dart' as http;
class Repository{
final _baseUrl = 'https://6201ea39b8735d00174cb64c.mockapi.io/blog';

Future getData()async{
  try {
    final response= await http.get(Uri.parse(_baseUrl));
    print(response.body);
    if(response.statusCode == 200){
      Iterable it = jsonDecode(response.body);
      List<Blog> blog = it.map((e) => Blog.fromJson(e)).toList();
      return blog;

    }

  }catch (e){
    print(e.toString());
  }
}

}