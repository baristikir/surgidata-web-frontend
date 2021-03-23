import 'package:flutter_test/flutter_test.dart';
import 'package:surgidata_frontend/Core/Services/user.dart';

void main() {
  test('Given user with age of 24 When birthday is called Then user is old',
      () async {
    // * Arrange *
    final user = User(21, "Baris");

    // * Act *
    user.changeName("Niclas");

    // * Assert *
    expect(user.name, "Niclas");
  });
}
