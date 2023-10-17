import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/payment/data_list/my_payment_list.dart';
import 'package:softtech_test/src/pages/payment/inner_page/my_payment/my_payment_screen.dart';
import 'package:softtech_test/src/pages/payment/inner_page/payment_detail_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key, required this.args});
  final BillingArgs args;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = widget.args.pageIndex;
    pageController = PageController(initialPage: selectedIndex!);
  }

  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
        isBackAppBar: true,
        appbarText: 'Payments',
        body: MainScaffold(
            bottomNavigationBar: selectedIndex == 0
                ? const ClaimDetailBottomNavigationBarComponent()
                : const MyClaimSbottomBarComponent(),
            body: Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  ProfileIndicatorsWidget(children: [
                    IndicatorWidget(
                        title: 'Payments Details',
                        isSelected: selectedIndex == 0,
                        onTap: () => setState(() {
                              pageController.jumpToPage(0);
                              selectedIndex = 0;
                            })),
                    IndicatorWidget(
                        title: 'My Payments',
                        isSelected: selectedIndex == 1,
                        onTap: () => setState(() {
                              pageController.jumpToPage(1);
                              selectedIndex = 1;
                            }))
                  ]),
                  Expanded(
                      child: PageView(
                          onPageChanged: (value) => setState(() {
                                pageController.jumpToPage(value);
                                selectedIndex = value;
                              }),
                          controller: pageController,
                          children: [
                        PaymentDetailScreen(
                            diagnosisCodeList: diagnosisCodeList,
                            cPTHCPCSCodeList: cPTHCPCSCodeList),
                        MyPaymentsScreen(myPaymentList: myPaymentList)
                      ]))
                ])),
            isGradient: true));
  }
}
