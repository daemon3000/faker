import 'package:faker/src/data/phone/phone.dart';

import 'random_generator.dart';

class Phone {
  const Phone(this.random);

  final RandomGenerator random;

  /// Generates a phone number.
  /// If the country code is specified it will generate a phone number for that country.
  ///
  /// Example:
  /// ```dart
  ///   faker.phone.number();
  ///   faker.phone.number('+40');
  /// ```
  String number([String? countryCode]) {
    if(countryCode == null || !phoneNumbers.containsKey(countryCode)) {
      countryCode = random.element(countryCodes);
    }

    return random.element(phoneNumbers[countryCode]!);
  }
}
