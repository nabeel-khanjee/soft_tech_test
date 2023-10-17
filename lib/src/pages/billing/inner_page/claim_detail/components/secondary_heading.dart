import 'package:softtech_test/src/app/app_export.dart';

class SecondaryHeading extends StatelessWidget {
  const SecondaryHeading({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontFamily: FontConstantc.gilroySemiBold));
  }
}
