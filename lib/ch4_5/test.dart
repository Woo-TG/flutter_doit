int? a1;
late int a2;

main() {
  a2 = 10;

  a1 = a2;  // int -> int? : 암시적
  // a2 = a1;  // int? -> int : 명시적
  a2 = a1 as int;  // 상위타입 -> 하위타입 : as(명시적 형변환)
}