import 'package:solid_software_test/presentation/utils/exports.dart';

/// mixin to generate color
mixin ColorGeneratorMixin {
  /// random class that generates random numbers
  final Random random = Random();

  /// generate random color from ARGB
  Color generateRandomColor() {
    /// returns the random color
    return Color.fromARGB(
      maxDecimalValue,
      random.nextInt(maxDecimalValue + 1),
      random.nextInt(maxDecimalValue + 1),
      random.nextInt(maxDecimalValue + 1),
    );
  }
}
