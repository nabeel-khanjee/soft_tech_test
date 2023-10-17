import 'package:softtech_test/src/app/app_export.dart';

class PatientDetailScreenForm extends StatelessWidget {
  const PatientDetailScreenForm({
    super.key,
    required this.formkey,
    required this.controller,
    required this.firstNameController,
    required this.middleNameController,
    required this.lastNameController,
    required this.suffixController,
    required this.onDatePickerTap,
    required this.onDropdownFieldTapCity,
    required this.country,
    required this.getCityValue,
    required this.selectedDate,
    required this.onDropdownFieldTapGender,
    required this.gender,
    required this.getGenderValue,
    required this.selectedGender,
    required this.ssnController,
    required this.onDropdownFieldTapCountry,
    required this.getCountryValue,
    required this.selectedCountry,
    required this.onDropdownFieldTapState,
    required this.states,
    required this.getStateValue,
    required this.selectedStates,
    required this.zipCodeController,
    required this.selectCityController,
  });
  final GlobalKey<FormState> formkey;
  final TextEditingController zipCodeController;
  final TextEditingController selectCityController;
  final TextEditingController controller;
  final TextEditingController firstNameController;
  final TextEditingController middleNameController;
  final TextEditingController lastNameController;
  final TextEditingController suffixController;
  final VoidCallback onDatePickerTap;
  final VoidCallback onDropdownFieldTapCity;
  final List<String> country;
  final Function(String? value) getCityValue;
  final String? selectedDate;
  final VoidCallback onDropdownFieldTapGender;
  final List<String> gender;
  final Function(String? value) getGenderValue;
  final String? selectedGender;
  final TextEditingController ssnController;
  final VoidCallback onDropdownFieldTapCountry;
  final Function(String? value) getCountryValue;
  final String? selectedCountry;
  final VoidCallback onDropdownFieldTapState;
  final List<String> states;
  final Function(String? value) getStateValue;
  final String? selectedStates;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(children: [
          TextFormFieldComponent(
              label: StringConstants.patientID,
              controller: controller,
              listTextInputFormatter: [
                CardFormatter(sample: 'xxxx-xxxx-xxxx-xxxx', separator: '-')
              ]),
          TextFormFieldComponent(
            label: StringConstants.firstName,
            controller: firstNameController,
          ),
          TextFormFieldComponent(
            label: StringConstants.middleName,
            controller: middleNameController,
          ),
          TextFormFieldComponent(
            label: StringConstants.lastName,
            controller: lastNameController,
          ),
          TextFormFieldComponent(
            label: StringConstants.suffix,
            controller: suffixController,
          ),
          DatePickerAndDropDownWidget(
              onDatePickerTap: onDatePickerTap,
              onDropdownFieldTapCity: onDropdownFieldTapCity,
              country: country,
              getCityValue: getCityValue,
              selectedDate: selectedDate,
              onDropdownFieldTapGender: onDropdownFieldTapGender,
              gender: gender,
              getGenderValue: getGenderValue,
              selectedGender: selectedGender),
          TextFormFieldComponent(
            label: StringConstants.ssn,
            controller: ssnController,
          ),
          DropDownComponentProfile(
            bgColor: !getThemeStateIsLight()
                ? (lighten(getThemeColor(context), 0.35))
                : ColorConstants.white,
            onDropdownFieldTap: onDropdownFieldTapCountry,
            hintText: 'Disability/Impairment',
            items: const [
              'Hearing Impairment',
              'Visual Impairment',
              'Physical'
            ],
            selectedItem: (value) => getCountryValue(value),
            value: selectedCountry,
          ),
          DropDownComponentProfile(
            bgColor: !getThemeStateIsLight()
                ? (lighten(getThemeColor(context), 0.35))
                : ColorConstants.white,
            onDropdownFieldTap: onDropdownFieldTapCountry,
            hintText: StringConstants.selectCountry,
            items: country,
            selectedItem: (value) => getCountryValue(value),
            value: selectedCountry,
          ),
          DropDownComponentProfile(
            bgColor: !getThemeStateIsLight()
                ? (lighten(getThemeColor(context), 0.35))
                : ColorConstants.white,
            onDropdownFieldTap: onDropdownFieldTapState,
            hintText: StringConstants.selectState,
            items: states,
            selectedItem: (value) => getStateValue(value),
            value: selectedStates,
          ),
          TextFormFieldComponent(
            label: StringConstants.selectCity,
            controller: selectCityController,
          ),
          TextFormFieldComponent(
            label: StringConstants.zipCode,
            controller: zipCodeController,
          ),
        ]));
  }
}
