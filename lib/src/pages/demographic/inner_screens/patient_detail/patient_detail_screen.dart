import 'package:softtech_test/src/app/app_export.dart';

class PatientDetailScreen extends StatelessWidget {
  const PatientDetailScreen({
    super.key,
    required this.formkey,
    required this.controller,
    required this.firstNameController,
    required this.middleNameController,
    required this.lastNameController,
    required this.suffixController,
    required this.country,
    required this.selectedDate,
    required this.gender,
    required this.selectedGender,
    required this.ssnController,
    required this.selectedCity,
    required this.states,
    required this.selectedStates,
    required this.onDatePickerTap,
    required this.onDropdownFieldTapCity,
    required this.onDropdownFieldTapGender,
    required this.onDropdownFieldTapCountry,
    required this.onDropdownFieldTapState,
    required this.getCityValue,
    required this.getStateValue,
    required this.getGenderValue,
    required this.getCountryValue,
    this.selectedCountry,
    required this.titleDemographicInnerScreen,
    required this.selectCityController,
    required this.zipCodeController,
  });

  final GlobalKey<FormState> formkey;
  final TextEditingController zipCodeController;
  final TextEditingController selectCityController;
  final TextEditingController controller;
  final TextEditingController firstNameController;
  final TextEditingController middleNameController;
  final TextEditingController lastNameController;
  final TextEditingController suffixController;
  final List<String> country;
  final String? selectedDate;
  final List<String> gender;
  final String? selectedGender;
  final TextEditingController ssnController;
  final String? selectedCity;
  final List<String> states;
  final String? selectedStates;
  final String? selectedCountry;
  final String titleDemographicInnerScreen;
  final VoidCallback onDatePickerTap;
  final VoidCallback onDropdownFieldTapCity;
  final VoidCallback onDropdownFieldTapGender;
  final VoidCallback onDropdownFieldTapCountry;
  final VoidCallback onDropdownFieldTapState;
  final Function(String?) getCityValue;
  final Function(String?) getStateValue;
  final Function(String?) getGenderValue;
  final Function(String?) getCountryValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleDemographicsMainHeadingInnerPage(
              titleDemographicInnerScreen: titleDemographicInnerScreen),
          PatientDetailScreenForm(
              formkey: formkey,
              selectCityController: selectCityController,
              zipCodeController: zipCodeController,
              controller: controller,
              firstNameController: firstNameController,
              middleNameController: middleNameController,
              lastNameController: lastNameController,
              suffixController: suffixController,
              onDatePickerTap: onDatePickerTap,
              onDropdownFieldTapCity: onDropdownFieldTapCity,
              country: country,
              getCityValue: getCityValue,
              selectedDate: selectedDate,
              onDropdownFieldTapGender: onDropdownFieldTapGender,
              gender: gender,
              getGenderValue: getGenderValue,
              selectedGender: selectedGender,
              ssnController: ssnController,
              onDropdownFieldTapCountry: onDropdownFieldTapCountry,
              getCountryValue: getCountryValue,
              selectedCountry: selectedCountry,
              onDropdownFieldTapState: onDropdownFieldTapState,
              states: states,
              getStateValue: getStateValue,
              selectedStates: selectedStates)
        ],
      ),
    );
  }
}
