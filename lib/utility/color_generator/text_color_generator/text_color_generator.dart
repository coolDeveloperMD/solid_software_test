import 'package:solid_software_test/shared/exports.dart';

/// abstract class of text color generator
abstract class TextColorGenerator {
  /// abstract method to return luminance text color
  void generateTextColor({required Color color});
}

/// generate text color based on given color
class GenerateRandomTextColor extends TextColorGenerator
    with ColorGeneratorMixin {
  /// text color
  Color _textColor = Colors.black;

  /// this will return black or white color based on given color
  Color getTextColor() => _textColor;

  /// It overrides the implementation of generate black or white text color
  /// based on given color
  @override
  void generateTextColor({required Color color}) {
    _textColor = Color.fromARGB(
      maxDecimalValue,
      random.nextInt(maxDecimalValue + 1),
      random.nextInt(maxDecimalValue + 1),
      random.nextInt(maxDecimalValue + 1),
    );
    // Calculate the relative luminance of the background color
    final luminance =
        (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue) / 255;

    // Choose white or black text color based on the luminance
    _textColor =
        luminance > luminanceThresholdValue ? Colors.black : Colors.white;
  }
}
