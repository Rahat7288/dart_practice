void main() {
  var person = new Person();
  person.firstName = 'Rahat';
  person.lastName = 'Akash';
  person.age = 24;
  person.printInfo();
}

class Person {
  late String firstName;
  late String lastName;
  late int age;

  printInfo() {
    print('may name is $firstName');
    print(lastName);
    print(age);
  }
}
