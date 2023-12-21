import 'package:flutter/material.dart';
import 'Person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Examen Práctico de Flutter'),
        ),
        body: Center(
          child: StudentsList(),
        ),
      ),
    );
  }
}

class StudentsList extends StatelessWidget {
  final List<Person> students = [
    Person.withAge('Juan Pérez', 25),
    Person.withAge('María García', 22),
    Person.withAge('Luis González', 20),
    Person.withAge('Ana Martínez', 23),
    Person.withAge('Carlos Rodríguez', 24),
    Person.withAge('Sofía López', 21),
    Person.withAge('Javier Sánchez', 26),
    Person.withAge('Laura Fernández', 19),
    Person.withAge('Diego Ramírez', 27),
    Person.withAge('Elena Gómez', 18),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (BuildContext context, int index) {
        return StudentInfo(student: students[index]);
      },
    );
  }
}

class StudentInfo extends StatelessWidget {
  final Person student;

  const StudentInfo({required this.student});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Center(
        child: Text(
          student.toString(),
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
