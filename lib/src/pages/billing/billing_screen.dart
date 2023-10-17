import 'package:softtech_test/src/app/app_export.dart';

class BillingScreen extends StatefulWidget {
  const BillingScreen({super.key, required this.args});

  final BillingArgs args;

  @override
  State<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {
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
        appbarText: 'Billings',
        body: MainScaffold(
            bottomNavigationBar: selectedIndex == 0
                ? const ClaimDetailBottomNavigationBarComponent()
                : const MyClaimSbottomBarComponent(),
            body: Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  ProfileIndicatorsWidget(children: [
                    IndicatorWidget(
                        title: 'Claim Details',
                        isSelected: selectedIndex == 0,
                        onTap: () => setState(() {
                              pageController.jumpToPage(0);
                              selectedIndex = 0;
                            })),
                    IndicatorWidget(
                        title: 'My Claims',
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
                        ClaimDetailScreen(
                            diagnosisCodeList: diagnosisCodeList,
                            cPTHCPCSCodeList: cPTHCPCSCodeList),
                        MyClaimsScreen(myClaimList: myClaimList)
                      ]))
                ])),
            isGradient: true));
  }
}
