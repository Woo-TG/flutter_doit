class User {
  String? name;
  int? age;
  some(){}
  int? phone;
}

main(){
  Object obj = User();
  // obj.some();  //error

  if(obj is User) {    //  obj 가 User타입의 객체인지 체크
    // smart casting(자동 형 변환 / 하위에서 상위로 형 변환)
    obj.some();
  }

  Object obj1 = User();
  (obj1 as User).some();   // Object 타입의 obj1의 객체를 User 타입의 객체로 변환
                           // Object --> User :  상위에서 하위는 명시적 형 변환
   var user = User()
    // user.name = 'hello'; // 일반적 멤버 접근

    ..name = 'world'        // 캐스캐이드를 사용하면 객체 이름 생략 가능
    ..age = 20
    ..some();

  print(user.name);
}