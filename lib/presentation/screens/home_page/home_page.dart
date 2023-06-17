import 'package:solid_software_test/presentation/utils/exports.dart';

/// This is the home page of our application
class HomePage extends StatefulWidget {
  /// We can add fields parameters here.
  const HomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<HomePage> createState() => _HomePageState();
}

/// This state of stateful home page
class _HomePageState extends State<HomePage> {
  final RandomBackgroundColorGenerator _backgroundColorGenerator =
      RandomBackgroundColorGenerator();

  final GenerateRandomTextColor _generateRandomTextColor =
      GenerateRandomTextColor();

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
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Solid Software Test'),
      ),
      body: Center(
        child: InkWell(
          onTap: () => generateRandomColor(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            color: _backgroundColorGenerator.getBackgroundColor(),
            child: Center(
              child: Text(
                textHelloThere,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: _generateRandomTextColor.getTextColor(),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
