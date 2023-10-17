import 'package:softtech_test/src/flavors/flavors.dart';
import 'package:softtech_test/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  await runner.main();
}
