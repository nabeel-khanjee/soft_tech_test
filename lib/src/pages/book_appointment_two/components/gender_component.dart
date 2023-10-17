import 'package:softtech_test/src/app/app_export.dart';

class GenderComponent extends StatelessWidget {
  const GenderComponent({
    super.key,
    required this.genderBool,
    required this.onTap,
    required this.text,
  });

  final bool? genderBool;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                border: Border.all(color: lighten(getThemeColor(context), 0.1)),
                borderRadius: BorderRadius.circular(11),
                color: getThemeStateIsLight()
                    ? darken(getThemeColor(context), 0.3)
                    : lighten(getThemeColor(context), 0.3),
              ),
              padding: const EdgeInsets.all(3),
              child: genderBool == true
                  ? Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: lighten(getThemeColor(context), 0.1)),
                    )
                  : Container(),
            ),
            const SizedBox(width: 20),
            Text(text)
          ],
        ),
      ),
    );
  }
}
