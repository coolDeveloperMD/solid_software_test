// This is a basic Flutter test.
/// this is used to test te color generator class

import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test/presentation/utils/exports.dart';

void main() {
  group('Color Generator', () {
    test('Generate Random Color', () {
      final RandomColorGenerator _colorGenerator = RandomColorGenerator();
      // ensure color generator object is not null
      expect(_colorGenerator, isNotNull);

      _colorGenerator.generateBackgroundColor();
      _colorGenerator.generateTextColor(
        color: _colorGenerator.getBackgroundColor(),
      );

      final Color backgroundColor = _colorGenerator.getBackgroundColor();
      final Color textColor = _colorGenerator.getTextColor();

      // ensure the generated background color
      // is an instance of background color
      expect(backgroundColor, isInstanceOf<Color>());

      //ensure the generated text color is an instance of text color
      expect(textColor, isInstanceOf<Color>());
    });
  });
}
