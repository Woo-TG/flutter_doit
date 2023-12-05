import 'package:flutter_ssamz/ch3_1/test1.dart';
// import 'test1.dart';  // 같은 lib내의 경우 이것도 가능

main() {
  no1 = 100;
  // _no2 = 200;  //error

  sayHello1();
  // _sayHello2(); //error

  User1 user1 = User1();
  user1.name = "woo";
  // user1._address  //error

}