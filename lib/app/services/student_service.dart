import 'package:crud_rest_api/app/models/student.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StudentService {
  static Future<List<Student>> getStudents() async {
    List<Student> students = [];

    try {
      final response = await http
          .get(Uri.parse('https://hiringmobile.qtera.co.id/students'));

      String body = response.body;

      Map<String, dynamic> map = jsonDecode(body);

      for (var newsJson in map["data"]) {
        students.add(Student.fromJson(newsJson));
      }
    } catch (e) {}

    return students;
  }
}
