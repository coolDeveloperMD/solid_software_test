// This is a basic Flutter test.
/// this is used to test te color generator class

import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test/shared/exports.dart';

void main() {
  group('Color Generator', () {
    test('Generate background random color', () {
      final RandomBackgroundColorGenerator _randomBackgroundColorGenerator =
          RandomBackgroundColorGenerator();

      _randomBackgroundColorGenerator.generateBackgroundColor();

      final Color backgroundColor =
          _randomBackgroundColorGenerator.getBackgroundColor();

      // ensure the generated background color
      // is an instance of background color
      expect(backgroundColor, isInstanceOf<Color>());
    });
    test('Generate text color', () {
      final GenerateRandomTextColor _generateRandomTextColor =
          GenerateRandomTextColor();

      _generateRandomTextColor.generateTextColor(
        color: Colors.white,
      );

      final Color textColor = _generateRandomTextColor.getTextColor();

      //ensure the generated text color is an instance of text color
      expect(textColor, isInstanceOf<Color>());
    });

    test('Color palette generator', () {
      final ColorPaletteListGenerator _colorPaletteListGenerator =
          ColorPaletteListGenerator();

      _colorPaletteListGenerator.generateColorPaletteList(
        baseColor: Colors.blue,
        numberOfShades: numberOfShades,
      );

      final List<Color>? colorPaletteList =
          _colorPaletteListGenerator.getColorPaletteList();

      expect(colorPaletteList, isNotNull);
      expect(colorPaletteList, isNotEmpty);
    });
  });
  tearDownAll(() => debugPrint('Congrats! All test cases are passed'));
}
