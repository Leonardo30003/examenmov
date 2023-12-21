class Person {
  String fullName;
  int age = 0;

  // Constructor por nombre para asignar nombres y apellidos
  Person(this.fullName);

  // Constructor factory para asignar la edad
  factory Person.withAge(String fullName, int age) {
    var person = Person(fullName);
    person.age = age;
    return person;
  }

  @override
  String toString() {
    return 'Nombre: $fullName\nEdad: $age';
  }
}
