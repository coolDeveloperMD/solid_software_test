
import 'package:solid_software_test/shared/exports.dart';

/// abstract class of background color generator class
abstract class BackgroundColorGenerator {
  /// abstract method to generate background color
  void generateBackgroundColor();
}

/// It is used to generate random color
class RandomBackgroundColorGenerator
    with ColorGeneratorMixin
    implements BackgroundColorGenerator {
  /// background color
  Color _backgroundColor = Colors.white;

  /// this will return the background color
  Color getBackgroundColor() => _backgroundColor;

  /// It overrides the implementation of generate background color
  @override
  void generateBackgroundColor() => _backgroundColor = generateRandomColor();
}
