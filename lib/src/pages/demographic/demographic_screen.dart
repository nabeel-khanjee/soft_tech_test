import 'package:softtech_test/src/app/app_export.dart';

class DemographicScreen extends StatefulWidget {
  const DemographicScreen({super.key});

  @override
  State<DemographicScreen> createState() => _DemographicScreenState();
}

class _DemographicScreenState extends State<DemographicScreen> {
  int currentPage = 0;
  final _formkeyPatientDetail = GlobalKey<FormState>();
  final _formkeyContactDetail = GlobalKey<FormState>();
  final _formkeyInsuranceDetail = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController suffixController = TextEditingController();
  final TextEditingController ssnController = TextEditingController();
  final TextEditingController selectCityController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cellPhoneNumberController =
      TextEditingController();
  final TextEditingController residenceNumberController =
      TextEditingController();
  final TextEditingController selectStateController = TextEditingController();
  List<String> country = ['Pakistan', 'USA', "UAE"];
  List<String> states = ['Sindh', 'Punjab', "Blochistan"];
  String? selectedCountry;
  String? selectedStates;
  String? selectedGender;
  List<String> gender = [StringConstants.male, StringConstants.female];
  String? selectedDate;
  final TextEditingController nameContactDetailController =
      TextEditingController();
  final TextEditingController relationContactController =
      TextEditingController();
  final TextEditingController contactNumberContactDetailController =
      TextEditingController();
  final TextEditingController pharmacyNamePharmacyConroller =
      TextEditingController();
  final TextEditingController addressPharmacyController =
      TextEditingController();
  final TextEditingController cityPharmacyController = TextEditingController();
  final TextEditingController zipCodePharmacyController =
      TextEditingController();
  final TextEditingController phoneNumberPharmacyController =
      TextEditingController();
  final TextEditingController primaryInsuranceNameController =
      TextEditingController();
  final TextEditingController primaryInsurancememberIdController =
      TextEditingController();
  final TextEditingController primaryInsuranceinsuranceGroupController =
      TextEditingController();
  final TextEditingController primaryInsuranceBinController =
      TextEditingController();
  final TextEditingController secondaryInsuranceNameController =
      TextEditingController();
  final TextEditingController secondaryInsurancememberIdController =
      TextEditingController();
  final TextEditingController secondaryInsuranceinsuranceGroupController =
      TextEditingController();
  final TextEditingController secondaryInsuranceBinController =
      TextEditingController();
  final TextEditingController pharmacyPayerIdController =
      TextEditingController();
  final TextEditingController pharmacyrxBinController = TextEditingController();
  final TextEditingController pharmacyrxGroupController =
      TextEditingController();
  final TextEditingController nameInterpreterContactDetailController =
      TextEditingController();
  final TextEditingController relationInterpreterContactController =
      TextEditingController();
  final TextEditingController contactInterpreterNumberContactDetailController =
      TextEditingController();

  final TextEditingController pharmacyrxGroupPCNController =
      TextEditingController();
  String? primaryInsuranceSelectedDateHealtPlan;
  String? primaryInsuranceSelectedDateEndDate;
  String? secondaryInsuranceSelectedDateHealtPlan;
  String? secondaryInsuranceSelectedDateEndDate;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return MainScaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            ProfileIndicatorsWidget(
              children: [
                IndicatorWidget(
                  onTap: () {
                    pageController.jumpToPage(0);
                    setState(() => currentPage = 0);
                  },
                  isSelected: currentPage == 0,
                  title: StringConstants.personal,
                ),
                IndicatorWidget(
                  onTap: () {
                    pageController.jumpToPage(1);
                    setState(() => currentPage = 1);
                  },
                  isSelected: currentPage == 1,
                  title: StringConstants.contact,
                ),
                IndicatorWidget(
                  onTap: () {
                    pageController.jumpToPage(2);
                    setState(() => currentPage = 2);
                  },
                  isSelected: currentPage == 2,
                  title: StringConstants.insurance,
                ),
              ],
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) => setState(() => currentPage = value),
                children: [
                  PatientDetailScreen(
                      onDropdownFieldTapCountry: () =>
                          setState(() => selectedCountry = null),
                      onDropdownFieldTapState: () =>
                          setState(() => selectedStates = null),
                      onDropdownFieldTapGender: () =>
                          setState(() => selectedGender = null),
                      onDropdownFieldTapCity: () =>
                          setState(() => selectedDate = null),
                      getStateValue: (value) =>
                          setState(() => selectedStates = value),
                      getGenderValue: (value) =>
                          setState(() => selectedGender = value),
                      getCityValue: (value) =>
                          setState(() => selectedCountry = value),
                      getCountryValue: (value) =>
                          setState(() => selectedCountry = value),
                      onDatePickerTap: () => showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now())
                          .then((value) => setState(() => selectedDate =
                              DateFormat('yyyy-MM-dd')
                                  .format(value!)
                                  .substring(0, 10))),
                      selectedCountry: selectedCountry,
                      titleDemographicInnerScreen:
                          StringConstants.patientDetails,
                      formkey: _formkeyPatientDetail,
                      controller: controller,
                      firstNameController: firstNameController,
                      middleNameController: middleNameController,
                      selectCityController: selectCityController,
                      zipCodeController: zipCodeController,
                      lastNameController: lastNameController,
                      suffixController: suffixController,
                      country: country,
                      selectedDate: selectedDate,
                      gender: gender,
                      selectedGender: selectedGender,
                      ssnController: ssnController,
                      selectedCity: selectedCountry,
                      states: states,
                      selectedStates: selectedStates),
                  ContactDetailScreen(
                      contactInterpreterNumberContactDetailController:
                          contactInterpreterNumberContactDetailController,
                      nameInterpreterContactDetailController:
                          nameInterpreterContactDetailController,
                      relationInterpreterContactController:
                          relationInterpreterContactController,
                      nameContactDetailController: nameContactDetailController,
                      relationContactController: relationContactController,
                      contactNumberContactDetailController:
                          contactNumberContactDetailController,
                      pharmacyNamePharmacyConroller:
                          pharmacyNamePharmacyConroller,
                      addressPharmacyController: addressPharmacyController,
                      cityPharmacyController: cityPharmacyController,
                      zipCodePharmacyController: zipCodePharmacyController,
                      phoneNumberPharmacyController:
                          phoneNumberPharmacyController,
                      addressController: addressController,
                      cellPhoneNumberController: cellPhoneNumberController,
                      residenceNumberController: residenceNumberController,
                      selectStateController: selectStateController,
                      onDropdownFieldTapCountry: () =>
                          setState(() => selectedCountry = null),
                      onDropdownFieldTapState: () =>
                          setState(() => selectedStates = null),
                      onDropdownFieldTapGender: () =>
                          setState(() => selectedGender = null),
                      onDropdownFieldTapCity: () =>
                          setState(() => selectedDate = null),
                      getStateValue: (value) =>
                          setState(() => selectedStates = value),
                      getGenderValue: (value) =>
                          setState(() => selectedGender = value),
                      getCityValue: (value) =>
                          setState(() => selectedCountry = value),
                      getCountryValue: (value) =>
                          setState(() => selectedCountry = value),
                      onDatePickerTap: () => showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now())
                          .then((value) => setState(() => selectedDate =
                              DateFormat('yyyy-MM-dd')
                                  .format(value!)
                                  .substring(0, 10))),
                      selectedCountry: selectedCountry,
                      titleDemographicInnerScreen:
                          StringConstants.contactDetails,
                      subHeadingOneDemographicInnerScreen: StringConstants.emergancyContactInfo,
                      subHeadingTwoDemographicInnerScreen: StringConstants.yourPharmacyAddress,
                      formkey: _formkeyContactDetail,
                      controller: controller,
                      firstNameController: firstNameController,
                      middleNameController: middleNameController,
                      selectCityController: selectCityController,
                      zipCodeController: zipCodeController,
                      lastNameController: lastNameController,
                      suffixController: suffixController,
                      country: country,
                      selectedDate: selectedDate,
                      gender: gender,
                      selectedGender: selectedGender,
                      ssnController: ssnController,
                      selectedCity: selectedCountry,
                      states: states,
                      selectedStates: selectedStates),
                  DemographicInsuranceScreen(
                      onTapPrimaryInsuranceEndDate: () => showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now())
                          .then((value) => setState(() =>
                              primaryInsuranceSelectedDateEndDate =
                                  DateFormat('yyyy-MM-dd')
                                      .format(value!)
                                      .substring(0, 10))),
                      onTapPrimaryInsuranceHealthPlan: () => showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now())
                          .then((value) => setState(() => primaryInsuranceSelectedDateHealtPlan = DateFormat('yyyy-MM-dd').format(value!).substring(0, 10))),
                      onTapSecondaryInsuranceEndDate: () => showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime.now()).then((value) => setState(() => secondaryInsuranceSelectedDateEndDate = DateFormat('yyyy-MM-dd').format(value!).substring(0, 10))),
                      onTapSecondaryInsuranceHealthPlan: () => showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime.now()).then((value) => setState(() => secondaryInsuranceSelectedDateHealtPlan = DateFormat('yyyy-MM-dd').format(value!).substring(0, 10))),
                      formkeyInsuranceDetail: _formkeyInsuranceDetail,
                      primaryInsuranceNameController: primaryInsuranceNameController,
                      primaryInsuranceSelectedDateHealtPlan: primaryInsuranceSelectedDateHealtPlan,
                      primaryInsurancememberIdController: primaryInsurancememberIdController,
                      primaryInsuranceinsuranceGroupController: primaryInsuranceinsuranceGroupController,
                      primaryInsuranceSelectedDateEndDate: primaryInsuranceSelectedDateEndDate,
                      primaryInsuranceBinController: primaryInsuranceBinController,
                      secondaryInsuranceNameController: secondaryInsuranceNameController,
                      secondaryInsuranceSelectedDateHealtPlan: secondaryInsuranceSelectedDateHealtPlan,
                      secondaryInsurancememberIdController: secondaryInsurancememberIdController,
                      secondaryInsuranceinsuranceGroupController: secondaryInsuranceinsuranceGroupController,
                      secondaryInsuranceSelectedDateEndDate: secondaryInsuranceSelectedDateEndDate,
                      secondaryInsuranceBinController: secondaryInsuranceBinController,
                      pharmacyPayerIdController: pharmacyPayerIdController,
                      pharmacyrxBinController: pharmacyrxBinController,
                      pharmacyrxGroupController: pharmacyrxGroupController,
                      pharmacyrxGroupPCNController: pharmacyrxGroupPCNController)
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBarcomponent(
          actionTextButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  if (_formkeyPatientDetail.currentState!.validate()) {
                  } else {}
                },
                child: Text(
                  StringConstants.save,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: getThemeColor(context),
                      fontFamily: FontConstantc.gilroyMedium),
                )),
          ),
          isGradient: false,
          title: StringConstants.demographic,
          isBackAppBar: true,
          isTitleTowLines: false),
      isGradient: false,
    );
  }
}
