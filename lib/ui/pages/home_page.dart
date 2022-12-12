import 'package:crud_rest_api/app/models/student.dart';
import 'package:crud_rest_api/app/services/student_service.dart';
import 'package:crud_rest_api/ui/pages/create_page.dart';
import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Data Page'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const CreatePage();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: StudentService.getStudents(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            List<Student>? studentsList = snapshot.data;

            return ListView.builder(
                clipBehavior: Clip.hardEdge,
                itemCount: studentsList!.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return StudentCardWidget(studentsList[index]);
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
