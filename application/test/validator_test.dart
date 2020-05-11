import 'package:test/test.dart';
import 'package:coloradoadventuretrail/Auxiliary/validator.dart';
void main() {
  group('CheckIn', () {
    test('Empty email test', () {
      var result = FieldValidator.validateEmail('');
    expect(result, 'Enter Email');
    });
    test('Email entered is incorrect', () {
      var result = FieldValidator.validateEmail('test');
    expect(result, 'Email or password incorrect');
    });
    test('Email entered is correct', () {
      FieldValidator.validateEmail('test@gmail.com');
    expect(result, null);
    test('Empty Password test', () {
      var result = FieldValidator.validatePassword('');
    expect(result, 'Enter Email');
    });
    test('Password entered is incorrect', () {
      var result = FieldValidator.validatePassword('test');
    expect(result, 'Email or password Incorrect');
    });
    test('Password entered is correct', () {
      FieldValidator.validatePassword('password');
    expect(result, null);
    });}