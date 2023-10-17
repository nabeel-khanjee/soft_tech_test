import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/demographic/inner_screens/contact_detail/components/contact_details_form.dart';

class ContactDetailScreen extends StatelessWidget {
  const ContactDetailScreen({
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
    required this.subHeadingTwoDemographicInnerScreen,
    required this.subHeadingOneDemographicInnerScreen,
    required this.addressController,
    required this.cellPhoneNumberController,
    required this.residenceNumberController,
    required this.selectStateController,
    required this.nameContactDetailController,
    required this.relationContactController,
    required this.contactNumberContactDetailController,
    required this.pharmacyNamePharmacyConroller,
    required this.addressPharmacyController,
    required this.cityPharmacyController,
    required this.zipCodePharmacyController,
    required this.phoneNumberPharmacyController,
    required this.nameInterpreterContactDetailController,
    required this.relationInterpreterContactController,
    required this.contactInterpreterNumberContactDetailController,
  });

  final GlobalKey<FormState> formkey;
  final TextEditingController phoneNumberPharmacyController;
  final TextEditingController nameContactDetailController;
  final TextEditingController relationContactController;
  final TextEditingController contactNumberContactDetailController;
  final TextEditingController pharmacyNamePharmacyConroller;
  final TextEditingController addressPharmacyController;
  final TextEditingController cityPharmacyController;
  final TextEditingController zipCodePharmacyController;
  final TextEditingController zipCodeController;
  final TextEditingController selectCityController;
  final TextEditingController controller;
  final TextEditingController firstNameController;
  final TextEditingController middleNameController;
  final TextEditingController lastNameController;
  final TextEditingController suffixController;
  final TextEditingController addressController;
  final TextEditingController cellPhoneNumberController;
  final TextEditingController residenceNumberController;
  final TextEditingController selectStateController;
  final TextEditingController nameInterpreterContactDetailController;
  final TextEditingController relationInterpreterContactController;
  final TextEditingController contactInterpreterNumberContactDetailController;

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
  final String subHeadingTwoDemographicInnerScreen;
  final String subHeadingOneDemographicInnerScreen;
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
          ContactDetailScreenForm(
              formkey: formkey,
              contactInterpreterNumberContactDetailController:
                  contactInterpreterNumberContactDetailController,
              nameInterpreterContactDetailController:
                  nameInterpreterContactDetailController,
              relationInterpreterContactController:
                  relationInterpreterContactController,
              addressPharmacyController: addressPharmacyController,
              cityPharmacyController: cityPharmacyController,
              contactNumberContactDetailController:
                  contactNumberContactDetailController,
              nameContactDetailController: nameContactDetailController,
              pharmacyNamePharmacyConroller: pharmacyNamePharmacyConroller,
              phoneNumberPharmacyController: phoneNumberPharmacyController,
              relationContactController: relationContactController,
              zipCodePharmacyController: zipCodePharmacyController,
              subHeadingOneDemographicInnerScreen:
                  subHeadingOneDemographicInnerScreen,
              subHeadingTwoDemographicInnerScreen:
                  subHeadingTwoDemographicInnerScreen,
              selectCityController: selectCityController,
              zipCodeController: zipCodeController,
              addressController: addressController,
              cellPhoneNumberController: cellPhoneNumberController,
              residenceNumberController: residenceNumberController,
              selectStateController: selectStateController,
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
