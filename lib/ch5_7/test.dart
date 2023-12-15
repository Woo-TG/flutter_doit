some(){
  throw FormatException('my exception info');  // 2.호출 받아서 던지기
}

main() {
  var list = [10, 20, 30];
  for (var data in list) {
    print(data);
  }
  try {
    print('step1...');
    some();             // 1.실행 --> some() 함수 호출
    print('step2...');  // 실행 안됨
  } on FormatException catch (e) {    // 3.실행 --> 처리할 예외의 종류 작성
    print('step3...$e');
  } on Exception {              // 실행 안됨
    print('step4...');
  } finally {           // 옵션이나 작성하면 무조건 실행됨
  print('step5...');
  }
  print('step6...');    // 모든 처리가 끝나면 마지막은 정상 실행
}
