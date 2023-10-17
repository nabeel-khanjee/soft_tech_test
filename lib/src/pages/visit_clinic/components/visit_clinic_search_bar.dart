import 'package:softtech_test/src/app/app_export.dart';

class VisitClinicSearchBar extends StatelessWidget {
  const VisitClinicSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: darken(getThemeColor(context), 0.25),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search doctor',
        hintStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: ColorConstants.white),
      ),
    );
  }
}
