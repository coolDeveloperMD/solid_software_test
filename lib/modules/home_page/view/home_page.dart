import 'package:solid_software_test/shared/exports.dart';

/// This is the home page of our application
class HomePage extends StatefulWidget {
  /// We can add fields parameters here.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

/// This state of stateful home page
class _HomePageState extends State<HomePage> {
  final RandomBackgroundColorGenerator _backgroundColorGenerator =
      RandomBackgroundColorGenerator();

  final GenerateRandomTextColor _generateRandomTextColor =
      GenerateRandomTextColor();

  final ColorPaletteListGenerator _colorPaletteListGenerator =
      ColorPaletteListGenerator();

  @override
  void initState() {
    super.initState();
  }

  void generateRandomColor() {
    if (mounted) {
      setState(() {
        _backgroundColorGenerator.generateBackgroundColor();
        _generateRandomTextColor.generateTextColor(
          color: _backgroundColorGenerator.getBackgroundColor(),
        );
        _colorPaletteListGenerator.generateColorPaletteList(
          baseColor: _backgroundColorGenerator.getBackgroundColor(),
          numberOfShades: numberOfShades,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(textSolidSoftwareTest),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ColorPaletteListPage(
                  colorPalettes:
                      _colorPaletteListGenerator.getColorPaletteList(),
                ),
              ),
            ),
            icon: const Icon(Icons.palette_rounded),
            color: _backgroundColorGenerator.getBackgroundColor(),
          )
        ],
      ),
      body: InkWell(
        onTap: () => generateRandomColor(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          color: _backgroundColorGenerator.getBackgroundColor(),
          alignment: Alignment.center,
          child: Text(
            textHelloThere,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: _generateRandomTextColor.getTextColor(),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
