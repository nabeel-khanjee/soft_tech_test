import 'package:softtech_test/src/app/app_export.dart';

class IndicatorWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const IndicatorWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 48,
          width: 111,
          decoration: isSelected
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: getThemeColor(context))
              : null,
          child: Center(
              child: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: !isSelected
                    ? getThemeStateIsLight()
                        ? Theme.of(context).scaffoldBackgroundColor
                        : darken(getThemeColor(context), 0.5)
                    : !getThemeStateIsLight()
                        ? lighten(getThemeColor(context), 0.35)
                        : darken(getThemeColor(context), 0.5),
                fontFamily: FontConstantc.gilroySemiBold),
          )),
        ),
      ),
    );
  }
}
