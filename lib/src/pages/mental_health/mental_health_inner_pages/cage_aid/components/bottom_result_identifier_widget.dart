import 'package:softtech_test/src/app/app_export.dart';

class BottomResultIdentifierWidget extends StatelessWidget {
  const BottomResultIdentifierWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DividerComponent(),
        ResultIdentifiedRow(),
        DividerComponent(),
        AfterResultQuestionComponent(),
      ],
    );
  }
}
