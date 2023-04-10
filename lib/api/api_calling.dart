import 'dart:convert';
import 'package:apijsoncalling/api/StudentModel.dart';

import 'package:http/http.dart' as http;

class APIHelper {
  APIHelper._();
  static APIHelper apiHelper = APIHelper._();
  Future<Student?> fetchdata() async {
    try {
      http.Response response =
          await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);

        Student s1 = Student.fromjson(data);
        return s1;
      }
    } catch (e, s) {
      print(e.toString());
      print(s.toString());
    }
  }
}
