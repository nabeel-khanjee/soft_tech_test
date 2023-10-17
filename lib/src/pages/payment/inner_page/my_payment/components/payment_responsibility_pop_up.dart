import 'package:softtech_test/src/app/app_export.dart';

class PaymentResponsibilityComponent extends StatelessWidget {
  const PaymentResponsibilityComponent({
    super.key,
    required this.onDropdownFieldTapPayemntMethod,
    required this.selectedItemPayemntMethod,
    required this.selectedPaymentMethod,
    required this.patientResponsibilityController,
    required this.amountController,
    required this.advancePaymentController,
  });
  final VoidCallback onDropdownFieldTapPayemntMethod;
  final Function(String? value) selectedItemPayemntMethod;
  final String? selectedPaymentMethod;
  final TextEditingController patientResponsibilityController;
  final TextEditingController amountController;
  final TextEditingController advancePaymentController;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return StatefulBuilder(
      builder: (context, setState) => Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: lighten(getThemeColor(context), 0.4),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Payment Responsibility",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: darken(getThemeColor(context), 0.35),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(width: 2, color: getThemeColor(context))),
                  child: TextFormFieldComponent(
                      lableColor: getThemeColor(context),
                      verticalPadding: 0,
                      controller: patientResponsibilityController,
                      label: 'Patient Responsibilty'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2, color: getThemeColor(context)),
                        ),
                        child: TextFormFieldComponent(
                            lableColor: getThemeColor(context),
                            verticalPadding: 0,
                            controller: amountController,
                            textInputType: TextInputType.number,
                            label: 'Amount'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2, color: getThemeColor(context)),
                        ),
                        child: TextFormFieldComponent(
                            lableColor: getThemeColor(context),
                            verticalPadding: 0,
                            controller: advancePaymentController,
                            textInputType: TextInputType.number,
                            label: 'Advance Payment'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(width: 2, color: getThemeColor(context))),
                  child: DropDownComponentProfile(
                    bgColor: !getThemeStateIsLight()
                        ? (lighten(getThemeColor(context), 0.35))
                        : ColorConstants.white,
                    textColor: getThemeColor(context),
                    verticalMargin: 0,
                    items: const ["Card", "Cash", "Check"],
                    selectedItem: (paymentMethod) {
                      selectedItemPayemntMethod(paymentMethod);
                    },
                    value: selectedPaymentMethod,
                    hintText: 'Payment Mode',
                    onDropdownFieldTap: onDropdownFieldTapPayemntMethod,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: BottomNavBarAppointmentBookScreen(
                      horizontalPadding: 0,
                      verticalPadding: 15,
                      text: 'Pay Now',
                      fgColor: ColorConstants.white,
                      onTap: () {
                        if (selectedPaymentMethod == 'Card') {
                          ShowBottomSheetComponent().showBottomSheet(
                              isControlled: true,
                              removeHeight: true,
                              removePadding: true,
                              content: CardPaymentWidget(
                                amountController:
                                    TextEditingController(text: ''),
                                patientResponsibilityController:
                                    TextEditingController(text: ''),
                              ),
                              context: context);
                        } else if (selectedPaymentMethod == 'Cash') {
                          ShowBottomSheetComponent().showBottomSheet(
                              isControlled: true,
                              removeHeight: true,
                              removePadding: true,
                              content: CashPaymentWidget(
                                amountController:
                                    TextEditingController(text: ''),
                                patientResponsibilityController:
                                    TextEditingController(text: ''),
                              ),
                              context: context);
                        } else if (selectedPaymentMethod == 'Check') {
                          ShowBottomSheetComponent().showBottomSheet(
                              isControlled: true,
                              removeHeight: true,
                              removePadding: true,
                              content: ChequePaymentWidget(
                                amountController:
                                    TextEditingController(text: ''),
                                patientResponsibilityController:
                                    TextEditingController(text: ''),
                              ),
                              context: context);
                        } else {
                          ToastComponent3(context)
                              .showToast(context, 'Please select payment mode');
                        }
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
