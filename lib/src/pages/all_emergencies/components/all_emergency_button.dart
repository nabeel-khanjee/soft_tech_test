import 'package:softtech_test/src/app/app_export.dart';

class AllEmergencyButton extends StatelessWidget {
  const AllEmergencyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            fillColor: darken(getThemeColor(context), 0.25),
            filled: true,
            contentPadding: const EdgeInsets.all(14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            hintText: 'Others (please mention)',
            hintStyle: const TextStyle(color: ColorConstants.white),
            labelStyle: const TextStyle(color: ColorConstants.white),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.pinkScanHome),
          child: Text(
            "Call a Doctor",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
