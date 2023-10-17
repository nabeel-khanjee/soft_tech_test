import 'package:softtech_test/src/app/app_export.dart';

class CardPaymentWidget extends StatelessWidget {
  const CardPaymentWidget({
    super.key,
    required this.amountController,
    required this.patientResponsibilityController,
  });
  final TextEditingController amountController;
  final TextEditingController patientResponsibilityController;

  @override
  Widget build(BuildContext context) {
    final TextEditingController cardNoController = TextEditingController();
    final TextEditingController validityController = TextEditingController();
    final TextEditingController cvcController = TextEditingController();
    final TextEditingController datePaidController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: lighten(getThemeColor(context), 0.4),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Card Payment Mode",
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
                  color: !getThemeStateIsLight()
                      ? (lighten(getThemeColor(context), 0.35))
                      : ColorConstants.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: getThemeColor(context))),
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: TextFormFieldComponent(
                        lableColor: getThemeColor(context),
                        verticalPadding: 0,
                        controller: cardNoController,
                        label: 'Card No.'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      AssetsConstants.masterCardPaymentImage,
                      height: 40,
                    ),
                  )
                ],
              ),
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
                      border:
                          Border.all(width: 2, color: getThemeColor(context)),
                    ),
                    child: TextFormFieldComponent(
                        lableColor: getThemeColor(context),
                        verticalPadding: 0,
                        controller: validityController,
                        label: 'Validity'),
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
                      border:
                          Border.all(width: 2, color: getThemeColor(context)),
                    ),
                    child: TextFormFieldComponent(
                        lableColor: getThemeColor(context),
                        verticalPadding: 0,
                        controller: cvcController,
                        label: 'CVC'),
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
                  border: Border.all(width: 2, color: getThemeColor(context))),
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
                      border:
                          Border.all(width: 2, color: getThemeColor(context)),
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
                      border:
                          Border.all(width: 2, color: getThemeColor(context)),
                    ),
                    child: TextFormFieldComponent(
                        lableColor: getThemeColor(context),
                        verticalPadding: 0,
                        controller: datePaidController,
                        label: 'Date Paid'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: BottomNavBarAppointmentBookScreen(
                  horizontalPadding: 0,
                  verticalPadding: 15,
                  text: 'Pay Now',
                  fgColor: ColorConstants.white,
                  onTap: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
