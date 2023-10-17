import 'package:softtech_test/src/app/app_export.dart';

class PrescriptionSearchBar extends StatelessWidget {
  const PrescriptionSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: ColorConstants.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        hintText: 'Select Date',
        hintStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: darken(getThemeColor(context), 0.3)),
        labelStyle: TextStyle(
          color: darken(getThemeColor(context), 0.3),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: () => _selectDate(context),
            child: SvgPicture.asset("assets/icon/calendar.svg"),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(maxHeight: 25),
      ),
    );
  }
}

Future<void> _selectDate(BuildContext context) async {
  await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2035),
  );
}
