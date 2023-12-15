int? a1;
late int a2;

main() {
  a2 = 10;  // 사용전에는 초기화 해야함

  a1 = a2;  // int(하) -> int?(상) : 암시적
  // a2 = a1;  // int?(상) -> int(하) : 명시적
  a2 = a1 as int;  // 상위타입 -> 하위타입 : as(명시적 형변환)
}