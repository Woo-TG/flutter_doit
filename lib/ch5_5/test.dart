String _name = 'hello';

String get name {
  return _name.toUpperCase();
}

set name(value) {
  _name = value;
}

// 외부파일이라고 가정
main() {
  name = 'world';
  print('name : $name');
}