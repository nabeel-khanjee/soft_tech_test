import 'package:softtech_test/src/app/app_export.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            color: lighten(getThemeColor(context), 0.2),
            thickness: 0.5,
          )),
        ],
      ),
    );
  }
}
