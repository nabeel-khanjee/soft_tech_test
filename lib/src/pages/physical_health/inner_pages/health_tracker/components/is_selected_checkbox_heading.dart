import 'package:softtech_test/src/app/app_export.dart';

class IsSelectedChechBoxHeading extends StatelessWidget {
  const IsSelectedChechBoxHeading({
    super.key,
    required this.isDiabeticSelected,
    required this.getSelectedValue,
  });
  final Function(bool? value) getSelectedValue;

  final bool isDiabeticSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleDemographicsMainHeadingInnerPage(
            increseTopSpace: true,
            titleDemographicInnerScreen: StringConstants.diabetic),
        Checkbox(
          side: const BorderSide(color: ColorConstants.greyText, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          value: isDiabeticSelected,
          onChanged: (value) {
            getSelectedValue(value);
          },
        )
      ],
    );
  }
}
