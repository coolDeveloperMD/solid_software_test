// This is a basic Flutter test.
/// this is used to test te color generator class

import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test/presentation/utils/exports.dart';

void main() {
  group('Color Generator', () {
    test('Generate Random Color', () {
      final RandomColorGenerator colorGenerator = RandomColorGenerator();
      // ensure color generator object is not null
      expect(colorGenerator, isNotNull);

      colorGenerator.generateBackgroundColor();
      colorGenerator.generateTextColor(
        color: colorGenerator.getBackgroundColor(),
      );

      final Color backgroundColor = colorGenerator.getBackgroundColor();
      final Color textColor = colorGenerator.getTextColor();

      // ensure the generated background color
      // is an instance of background color
      expect(backgroundColor, isInstanceOf<Color>());

      //ensure the generated text color is an instance of text color
      expect(textColor, isInstanceOf<Color>());
    });
  });
}
