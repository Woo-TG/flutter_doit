class User{}

main() {
  dynamic data = 10;
  data = 'hello';
  data = true;
  data = User();

  var no1 = 10;  // int타입으로 유추
  no1 = 20;
  // no1 = true;  // error

  var no2;  // 초기값을 설정안했으므로 dynamic으로 유추
  no2 = 10;
  no2 = true;
  no2 = 'hello';

}