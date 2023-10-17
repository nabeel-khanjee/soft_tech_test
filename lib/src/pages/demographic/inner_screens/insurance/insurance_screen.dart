import 'package:softtech_test/src/app/app_export.dart';

class DemographicInsuranceScreen extends StatelessWidget {
  const DemographicInsuranceScreen({
    super.key,
    required this.primaryInsuranceNameController,
    required this.primaryInsuranceSelectedDateHealtPlan,
    required this.primaryInsurancememberIdController,
    required this.primaryInsuranceinsuranceGroupController,
    required this.primaryInsuranceSelectedDateEndDate,
    required this.primaryInsuranceBinController,
    required this.secondaryInsuranceNameController,
    required this.secondaryInsuranceSelectedDateHealtPlan,
    required this.secondaryInsurancememberIdController,
    required this.secondaryInsuranceinsuranceGroupController,
    required this.secondaryInsuranceSelectedDateEndDate,
    required this.secondaryInsuranceBinController,
    required this.pharmacyPayerIdController,
    required this.pharmacyrxBinController,
    required this.pharmacyrxGroupController,
    required this.pharmacyrxGroupPCNController,
    required this.formkeyInsuranceDetail,
    required this.onTapPrimaryInsuranceHealthPlan,
    required this.onTapSecondaryInsuranceHealthPlan,
    required this.onTapPrimaryInsuranceEndDate,
    required this.onTapSecondaryInsuranceEndDate,
  });
  final GlobalKey<FormState> formkeyInsuranceDetail;
  final TextEditingController primaryInsuranceNameController;
  final String? primaryInsuranceSelectedDateHealtPlan;
  final TextEditingController primaryInsurancememberIdController;
  final TextEditingController primaryInsuranceinsuranceGroupController;
  final String? primaryInsuranceSelectedDateEndDate;
  final TextEditingController primaryInsuranceBinController;
  final TextEditingController secondaryInsuranceNameController;
  final String? secondaryInsuranceSelectedDateHealtPlan;
  final TextEditingController secondaryInsurancememberIdController;
  final TextEditingController secondaryInsuranceinsuranceGroupController;
  final String? secondaryInsuranceSelectedDateEndDate;
  final TextEditingController secondaryInsuranceBinController;
  final TextEditingController pharmacyPayerIdController;
  final TextEditingController pharmacyrxBinController;
  final TextEditingController pharmacyrxGroupController;
  final TextEditingController pharmacyrxGroupPCNController;
  final VoidCallback onTapPrimaryInsuranceHealthPlan;
  final VoidCallback onTapSecondaryInsuranceHealthPlan;
  final VoidCallback onTapPrimaryInsuranceEndDate;
  final VoidCallback onTapSecondaryInsuranceEndDate;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formkeyInsuranceDetail,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleDemographicsMainHeadingInnerPage(
                titleDemographicInnerScreen: StringConstants.primaryInsurance),
            TextFormFieldComponent(
                controller: primaryInsuranceNameController,
                label: StringConstants.insuranceName),
            DatePickerComponent(
                datePickerTitle: StringConstants.healthPlan,
                country: const [],
                getCityValue: (p1) {},
                onDropdownFieldTapCity: () {},
                onDatePickerTap: onTapPrimaryInsuranceHealthPlan,
                selectedDate: primaryInsuranceSelectedDateHealtPlan),
            TextFormFieldComponent(
                controller: primaryInsurancememberIdController,
                label: StringConstants.memberId),
            TextFormFieldComponent(
                controller: primaryInsuranceinsuranceGroupController,
                label: StringConstants.insuranceGroup),
            DatePickerComponent(
                datePickerTitle: StringConstants.endDate,
                country: const [],
                getCityValue: (p1) {},
                onDropdownFieldTapCity: () {},
                onDatePickerTap: onTapPrimaryInsuranceEndDate,
                selectedDate: primaryInsuranceSelectedDateEndDate),
            TextFormFieldComponent(
                controller: primaryInsuranceBinController,
                label: StringConstants.bin),
            TitleDemographicsMainHeadingInnerPage(
                titleDemographicInnerScreen:
                    StringConstants.secondaryInsurance),
            TextFormFieldComponent(
                controller: secondaryInsuranceNameController,
                label: StringConstants.insuranceName),
            DatePickerComponent(
                datePickerTitle: StringConstants.healthPlan,
                country: const [],
                getCityValue: (p1) {},
                onDropdownFieldTapCity: () {},
                onDatePickerTap: onTapSecondaryInsuranceHealthPlan,
                selectedDate: secondaryInsuranceSelectedDateHealtPlan),
            TextFormFieldComponent(
                controller: secondaryInsurancememberIdController,
                label: StringConstants.memberId),
            TextFormFieldComponent(
                controller: secondaryInsuranceinsuranceGroupController,
                label: StringConstants.insuranceGroup),
            DatePickerComponent(
                datePickerTitle: StringConstants.endDate,
                country: const [],
                getCityValue: (p1) {},
                onDropdownFieldTapCity: () {},
                onDatePickerTap: onTapSecondaryInsuranceEndDate,
                selectedDate: secondaryInsuranceSelectedDateEndDate),
            TextFormFieldComponent(
                controller: secondaryInsuranceBinController,
                label: StringConstants.bin),
            TitleDemographicsMainHeadingInnerPage(
                titleDemographicInnerScreen: StringConstants.pharmacy),
            TextFormFieldComponent(
                controller: pharmacyPayerIdController,
                label: StringConstants.payerId),
            TextFormFieldComponent(
                controller: pharmacyrxBinController,
                label: StringConstants.rxBin),
            TextFormFieldComponent(
                controller: pharmacyrxGroupController,
                label: StringConstants.rxGroup),
            TextFormFieldComponent(
                controller: pharmacyrxGroupPCNController,
                label: StringConstants.rxGroupPCN),
          ],
        ),
      ),
    );
  }
}
