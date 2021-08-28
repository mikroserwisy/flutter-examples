import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/model/calculator.dart';

//@Skip("Not implemented yet")

void main() {

  final Calculator sut = Calculator();

  setUp(() {
    print("Before each");
  });

  tearDown(() {
    print("After each");
  });

  setUpAll(() {
    print("Before all");
  });

  tearDownAll(() {
    print("After all");
  });

  group("given two numbers", () {

    test("when add then returns their sum", () {
      // Given / Arrange
      final leftHandSide = 1;
      final rightHandSide = 2;
      // When / Act
      final actual = sut.add(leftHandSide, rightHandSide);
      // Then / Assert
      expect(actual, 3);
    });

    test("when substract then returns their difference", () {
      final leftHandSide = 2;
      final rightHandSide = 1;
      expect(leftHandSide - rightHandSide, sut.substract(leftHandSide, rightHandSide));
    }, timeout: Timeout(Duration(minutes: 1)));

    test("and divisor equals zero when divide then throws exception", () {
      final leftHandSide = 2;
      final rightHandSide = 0;
      expect(() => sut.divide(leftHandSide, rightHandSide), throwsException);
    }, skip: "Not implemented yet");

    test('Async value test', () async {
      expect(await Future.value(10), equals(10));
    });
  });

}
