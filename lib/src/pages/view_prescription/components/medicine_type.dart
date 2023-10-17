import 'package:softtech_test/src/app/app_export.dart';

class MedicineType extends StatelessWidget {
  const MedicineType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Type",
          style: TextStyle(
            color: ColorConstants.white.withOpacity(0.6),
          ),
        ),
        Text(
          "Tablet\n",
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
