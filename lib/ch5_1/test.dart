void some1(var a) {   // (a)과 동일함


}
some2(){        // dynamic 과 동일함
  return 10;
  return true;
  return 'hello';
}

main() {
  some1(10);
  some1(true);
  some1('hello');
}