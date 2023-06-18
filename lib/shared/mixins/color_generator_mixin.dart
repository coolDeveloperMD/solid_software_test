import 'package:solid_software_test/shared/exports.dart';

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

  /// generate color palette list from base color
  List<Color>? generateBaseColorPaletteList({
    required Color baseColor,
    required int numberOfShades,
  }) {
    final List<Color> colorPaletteList = [];

    // Calculate step size for generating shades
    final double step = 1.0 / numberOfShades;

    for (int i = 0; i < numberOfShades; i++) {
      final double amount = step * (i + 1);
      final Color shadeColor =
          Color.lerp(baseColor, Colors.white, amount) ?? baseColor;
      colorPaletteList.add(shadeColor);
    }

    return colorPaletteList;
  }
}
