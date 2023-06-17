import 'package:solid_software_test/presentation/utils/exports.dart';

/// abstract class of generator class
abstract class ColorGenerator {
  /// abstract method to generate background color
  void generateBackgroundColor();

  /// abstract method to return luminance text color
  void generateTextColor({required Color color});

  /// We can add multiple methods here in future.
  /// It helps to achieve S.O.L.I.D principle
}

/// It is used to generate random color
class RandomColorGenerator implements ColorGenerator {
  /// provides methods of generating numbers
  final Random random = Random();

  /// background color
  Color _backgroundColor = Colors.white;

  /// text color
  Color _textColor = Colors.black;

  /// this will return the background color
  Color getBackgroundColor() => _backgroundColor;

  /// this will return black or white color based on given color
  Color getTextColor() => _textColor;

  /// It overrides the implementation of generate background color
  @override
  void generateBackgroundColor() => _backgroundColor = Color.fromARGB(
        maxDecimalValue,
        random.nextInt(maxDecimalValue + 1),
        random.nextInt(maxDecimalValue + 1),
        random.nextInt(maxDecimalValue + 1),
      );

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
