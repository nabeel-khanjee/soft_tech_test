import 'package:softtech_test/src/app/app_export.dart';

class BillingPaymentExpansionPanel extends StatefulWidget {
  const BillingPaymentExpansionPanel({super.key, required this.isBilling});

  final bool isBilling;

  @override
  State<BillingPaymentExpansionPanel> createState() =>
      BillingPaymentExpansionPanelState();
}

class BillingPaymentExpansionPanelState
    extends State<BillingPaymentExpansionPanel> {
  bool? isExpanded;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ExpansionPanelList(
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            this.isExpanded = isExpanded;
          });
        },
        elevation: 0,
        expandedHeaderPadding: EdgeInsets.zero,
        expandIconColor: ColorConstants.white,
        dividerColor: ColorConstants.black,
        children: [
          ExpansionPanel(
              backgroundColor: lighten(getThemeColor(context), 0.1),
              isExpanded: isExpanded ?? false,
              headerBuilder: (context, isExpanded) => AppTileComponent(
                    isExpandable: true,
                    image: AssetsConstants.healthProfile,
                    onTap: () {
                      setState(() {
                        this.isExpanded = !isExpanded;
                      });
                    },
                    test: widget.isBilling
                        ? StringConstants.billings.split(' ').first
                        : StringConstants.billings.split(' ').last,
                  ),
              body: Column(
                children: checkIsBilling(widget.isBilling)
                    .asMap()
                    .entries
                    .map((e) => InkWell(
                          onTap: () => NavigationUtil.push(
                              context, e.value.route,
                              args: e.value.args),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: getThemeStateIsLight()
                                    ? darken(getThemeColor(context), 0.3)
                                    : Theme.of(context)
                                        .scaffoldBackgroundColor),
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 7.5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (e.key != 0)
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: lighten(
                                            getThemeColor(context), 0.4),
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(e.value.text),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ))
        ],
      ),
    );
  }

  List<BillingList> checkIsBilling(bool isBilling) {
    return isBilling ? billingList : paymentList;
  }
}
