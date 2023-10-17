import 'package:softtech_test/src/app/app_export.dart';

class DatePickerAndDropDownWidget extends StatelessWidget {
  const DatePickerAndDropDownWidget({
    super.key,
    required this.onDatePickerTap,
    required this.onDropdownFieldTapCity,
    required this.country,
    required this.getCityValue,
    required this.selectedDate,
    required this.onDropdownFieldTapGender,
    required this.gender,
    required this.getGenderValue,
    required this.selectedGender,
  });

  final VoidCallback onDatePickerTap;
  final VoidCallback onDropdownFieldTapCity;
  final List<String> country;
  final Function(String? p1) getCityValue;
  final String? selectedDate;
  final VoidCallback onDropdownFieldTapGender;
  final List<String> gender;
  final Function(String? p1) getGenderValue;
  final String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Row(
        children: [
          Expanded(
            child: DatePickerComponent(
                datePickerTitle: StringConstants.dateOfBirth,
                onDatePickerTap: onDatePickerTap,
                onDropdownFieldTapCity: onDropdownFieldTapCity,
                country: country,
                getCityValue: getCityValue,
                selectedDate: selectedDate),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: DropDownComponentProfile(
              bgColor: !getThemeStateIsLight()
                  ? (lighten(getThemeColor(context), 0.35))
                  : ColorConstants.white,
              onDropdownFieldTap: onDropdownFieldTapGender,
              hintText: StringConstants.gender,
              items: gender,
              selectedItem: (value) {
                getGenderValue(value);
              },
              value: selectedGender,
            ),
          )
        ],
      ),
    );
  }
}
