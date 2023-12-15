main () {
  int? no1 = 10;

  // no1 = null;

  bool? result = no1?.isEven;   // no1 이 널 허용이므로 no1 값이 널 일수도 있으므로
   print('result = $result');                 // bool 도 널 허용으로 해야 됨

  int? data3;
  data3 ??= 10;
  print('data3: $data3');
  data3 ??= null;
  print('data3: $data3');

  String? data4 = 'hello';
  String? result1 = data4 ?? 'world';
  print('data4:$result1');
  data4 = null;
  result1 = data4 ?? 'world';
  print('data4:$result1');

}