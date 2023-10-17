import 'package:softtech_test/src/app/app_export.dart';

class ContactDetailScreenForm extends StatelessWidget {
  const ContactDetailScreenForm({
    super.key,
    required this.formkey,
    required this.cellPhoneNumberController,
    required this.residenceNumberController,
    required this.addressController,
    required this.selectStateController,
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
    required this.subHeadingTwoDemographicInnerScreen,
    required this.subHeadingOneDemographicInnerScreen,
    required this.phoneNumberPharmacyController,
    required this.nameContactDetailController,
    required this.relationContactController,
    required this.contactNumberContactDetailController,
    required this.pharmacyNamePharmacyConroller,
    required this.addressPharmacyController,
    required this.cityPharmacyController,
    required this.zipCodePharmacyController,
    required this.nameInterpreterContactDetailController,
    required this.relationInterpreterContactController,
    required this.contactInterpreterNumberContactDetailController,
  });
  final GlobalKey<FormState> formkey;
  final String subHeadingTwoDemographicInnerScreen;
  final String subHeadingOneDemographicInnerScreen;
  final TextEditingController phoneNumberPharmacyController;
  final TextEditingController nameContactDetailController;
  final TextEditingController relationContactController;
  final TextEditingController contactNumberContactDetailController;
  final TextEditingController nameInterpreterContactDetailController;
  final TextEditingController relationInterpreterContactController;
  final TextEditingController contactInterpreterNumberContactDetailController;

  final TextEditingController pharmacyNamePharmacyConroller;
  final TextEditingController addressPharmacyController;
  final TextEditingController cityPharmacyController;
  final TextEditingController zipCodePharmacyController;

  final TextEditingController zipCodeController;
  final TextEditingController selectCityController;
  final TextEditingController cellPhoneNumberController;
  final TextEditingController residenceNumberController;
  final TextEditingController addressController;
  final TextEditingController selectStateController;
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormFieldComponent(
                  label: StringConstants.cellPhoneNumber,
                  controller: cellPhoneNumberController,
                  listTextInputFormatter: [
                    CardFormatter(sample: '(xxx)xxx-xxxx', separator: '-')
                  ]),
              TextFormFieldComponent(
                label: StringConstants.residenceNumber,
                controller: residenceNumberController,
                listTextInputFormatter: [
                  CardFormatter(sample: '(xxx)xxx-xxxx', separator: '-')
                ],
              ),
              TextFormFieldComponent(
                label: StringConstants.address,
                controller: addressController,
              ),
              TextFormFieldComponent(
                label: StringConstants.selectCity,
                controller: selectCityController,
              ),
              TextFormFieldComponent(
                label: StringConstants.selectState,
                controller: selectStateController,
              ),
              TextFormFieldComponent(
                label: StringConstants.zipCode,
                controller: zipCodeController,
              ),
              DropDownComponentProfile(
                onDropdownFieldTap: onDropdownFieldTapCountry,
                bgColor: !getThemeStateIsLight()
                    ? (lighten(getThemeColor(context), 0.35))
                    : ColorConstants.white,
                hintText: StringConstants.selectCountry,
                items: country,
                selectedItem: (value) => getCountryValue(value),
                value: selectedCountry,
              ),
              TitleDemographicsMainHeadingInnerPage(
                  titleDemographicInnerScreen:
                      subHeadingOneDemographicInnerScreen),
              TextFormFieldComponent(
                label: StringConstants.name,
                controller: nameContactDetailController,
              ),
              TextFormFieldComponent(
                label: StringConstants.relation,
                controller: relationContactController,
              ),
              TextFormFieldComponent(
                label: StringConstants.contactNumber,
                controller: contactNumberContactDetailController,
              ),
              const TitleDemographicsMainHeadingInnerPage(
                  titleDemographicInnerScreen: 'Interpreter Contact'),
              TextFormFieldComponent(
                label: StringConstants.name,
                controller: nameInterpreterContactDetailController,
              ),
              TextFormFieldComponent(
                label: StringConstants.relation,
                controller: relationInterpreterContactController,
              ),
              TextFormFieldComponent(
                label: StringConstants.contactNumber,
                controller: contactInterpreterNumberContactDetailController,
              ),
              TitleDemographicsMainHeadingInnerPage(
                  titleDemographicInnerScreen:
                      subHeadingTwoDemographicInnerScreen),
              TextFormFieldComponent(
                label: StringConstants.pharmacyName,
                controller: pharmacyNamePharmacyConroller,
              ),
              TextFormFieldComponent(
                label: StringConstants.yourPharmacyAddress,
                controller: addressPharmacyController,
              ),
              TextFormFieldComponent(
                label: StringConstants.city,
                controller: cityPharmacyController,
              ),
              TextFormFieldComponent(
                label: StringConstants.zipCode,
                controller: zipCodePharmacyController,
              ),
              TextFormFieldComponent(
                label: StringConstants.phoneNumber,
                controller: phoneNumberPharmacyController,
              ),
            ]));
  }
}
