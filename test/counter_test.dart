import 'package:flutter_getx_demo/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  Counter sut;

  setUp((){
    sut = Counter();
  });

  test('Counter should works correctly', (){

    sut.increment();
    sut.increment();
    sut.increment();

    expect(sut.value, 3);
  });
}