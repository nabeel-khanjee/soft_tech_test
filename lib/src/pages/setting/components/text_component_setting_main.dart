import 'package:softtech_test/src/app/app_export.dart';

class TextComponentSettingMainHeading extends StatelessWidget {
  const TextComponentSettingMainHeading({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: FontStylesConstants.gilroy(
            fontFamily: FontConstantc.gilroyRegular, fontSize: 20));
  }
}
