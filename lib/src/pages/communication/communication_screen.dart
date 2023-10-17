import 'package:softtech_test/src/app/app_export.dart';

class CommunicationScreen extends StatelessWidget {
  const CommunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const IsGradientBackGround(
      appbarText: "Communication",
      isBackAppBar: false,
      body: CommunicationBody(),
    );
  }
}
