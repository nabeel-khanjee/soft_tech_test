import 'package:softtech_test/src/app/app_export.dart';

class MedicineView extends StatelessWidget {
  const MedicineView(
      {super.key,
      required this.title,
      required this.dose,
      required this.detail});

  final String title;
  final String dose;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: ColorConstants.white.withOpacity(0.6),
          ),
        ),
        Text(
          dose,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          detail,
          style: const TextStyle(
            color: ColorConstants.yellowIndicatorColor,
          ),
        ),
      ],
    );
  }
}
