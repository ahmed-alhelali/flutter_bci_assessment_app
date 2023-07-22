import 'package:flutter/services.dart';

class AppFormatters {
  static FilteringTextInputFormatter emailFormatter =
      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9@.]'));

  static FilteringTextInputFormatter numbersFormatter =
      FilteringTextInputFormatter.allow(RegExp('[0-9]'));

  static FilteringTextInputFormatter phoneNumberFormatter =
      FilteringTextInputFormatter.allow(RegExp(r'^\+\d+(?:[ -]\d+)*$'));
}
