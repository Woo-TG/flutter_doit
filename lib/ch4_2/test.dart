// const String data1;  // 선언시 값이 할당 안되 오류. 초기값 설정해야 됨
//
// class User {
//   static const String data2;
//
//   void some() {
//     const String data3;
//   }
// }


const String data1 = 'hello';
final int no1 = 10;


class User {
  static const String data2 = 'hello';
  final int no2;
  User(this.no2);

  void some() {
    const String data3 = 'hello';
    final int no3;
    no3 = 10;  // 사용전에는 초기화 해야 됨
    int result = no3 + 20;

    // data1 = 'world'  // error.  값변경 안됨
  }
}

