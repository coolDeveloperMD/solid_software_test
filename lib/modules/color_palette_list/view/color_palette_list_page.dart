import 'package:solid_software_test/shared/exports.dart';

/// Color palette list page where
/// user can see multiple colors based on base color
class ColorPaletteListPage extends StatelessWidget {
  /// list of colors generated based on base color
  final List<Color>? colorPalettes;

  /// this is color palette list page constructor with key param
  const ColorPaletteListPage({Key? key, required this.colorPalettes})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(textColorPaletteList),
        backgroundColor: colorPalettes?.first ??
            Theme.of(context).colorScheme.inversePrimary,
        elevation: appBarElevation,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList.separated(
            itemCount: colorPalettes?.length ?? 0,
            itemBuilder: (context, index) {
              final String hexString =
                  colorPalettes?[index].value.toRadixString(
                            16,
                          ) ??
                      '000000';

              return SizedBox(
                height: colorPaletteViewHeight,
                child: ColoredBox(
                  color: colorPalettes?[index] ?? Colors.white,
                  child: Text(
                    '#${hexString.substring(
                      hexColorSubstringIndex,
                      hexString.length,
                    )}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 1,
              );
            },
          )
        ],
      ),
    );
  }
}
