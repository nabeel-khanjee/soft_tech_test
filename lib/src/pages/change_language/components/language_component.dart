import 'package:softtech_test/src/app/app_export.dart';

class LanguageConponent extends StatelessWidget {
  const LanguageConponent(
      {super.key,
      required this.onTap,
      required this.text,
      required this.isSelected});
  final String text;
  final Function(bool isSelected) onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(true),
      child: Column(
        children: [
          Row(children: [
            Container(
              height: 20,
              width: 20,
              decoration: isSelected
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: darken(getThemeColor(context), 0.1))
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: lighten(getThemeColor(context), 0.3),
                    ),
              child: Container(
                margin: const EdgeInsets.all(2),
                height: 10,
                width: 10,
                decoration: isSelected
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: darken(getThemeColor(context), 0.15))
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: lighten(getThemeColor(context), 0.3),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(text),
            ),
          ]),
          Container(
            height: 0.5,
            color: lighten(getThemeColor(context), 0.2),
          )
        ],
      ),
    );
  }
}
