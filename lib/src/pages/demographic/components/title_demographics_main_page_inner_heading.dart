import 'package:softtech_test/src/app/app_export.dart';

class TitleDemographicsMainHeadingInnerPage extends StatelessWidget {
  const TitleDemographicsMainHeadingInnerPage({
    super.key,
    required this.titleDemographicInnerScreen,
    this.increseTopSpace = false,
  });
  final bool increseTopSpace;
  final String titleDemographicInnerScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (increseTopSpace) const SizedBox(height: 10),
        const SizedBox(height: 10),
        Text(
          titleDemographicInnerScreen,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: getThemeColor(context),
              fontFamily: FontConstantc.gilroySemiBold),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
