import 'package:solid_software_test/shared/exports.dart';

/// abstract class of color palette generator class
abstract class ColorPaletteGenerator {
  /// abstract method to generate color palette list
  void generateColorPaletteList({
    required Color baseColor,
    required int numberOfShades,
  });
}

/// It is used to generate color palette list
class ColorPaletteListGenerator
    with ColorGeneratorMixin
    implements ColorPaletteGenerator {
  /// color palette list
  List<Color>? _colorPaletteList;

  /// this will return the list of color palette
  List<Color>? getColorPaletteList() => _colorPaletteList;

  /// It overrides the implementation of generate background color
  @override
  void generateColorPaletteList({
    required Color baseColor,
    required int numberOfShades,
  }) =>
      _colorPaletteList = generateBaseColorPaletteList(
        baseColor: baseColor,
        numberOfShades: numberOfShades,
      );
}
