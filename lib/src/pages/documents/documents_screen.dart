import 'package:softtech_test/src/app/app_export.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      appbarText: StringConstants.documents,
      isBackAppBar: false,
      body: const MainScaffold(
        isGradient: true,
        body: DocumentsBody(),
      ),
    );
  }
}
