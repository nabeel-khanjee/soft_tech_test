import 'package:softtech_test/src/app/app_export.dart';

class ExpansionPanelFaqs extends StatefulWidget {
  const ExpansionPanelFaqs({
    super.key,
    required this.faq,
  });

  final MapEntry<int, FaqList> faq;

  @override
  State<ExpansionPanelFaqs> createState() => _ExpansionPanelFaqsState();
}

class _ExpansionPanelFaqsState extends State<ExpansionPanelFaqs> {
  bool? isExpanded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) =>
              setState(() => this.isExpanded = isExpanded),
          elevation: 0,
          expandedHeaderPadding: EdgeInsets.zero,
          expandIconColor: Theme.of(context).scaffoldBackgroundColor,
          dividerColor: ColorConstants.black,
          children: [
            // ExpansionPanel(
            //   hasIcon: false,
            //   backgroundColor: !getThemeStateIsLight()
            //       ? darken(getThemeColor(context), 0.35)
            //       : ColorConstants.white,
            //   isExpanded: isExpanded ?? false,
            //   canTapOnHeader: true,
            //   headerBuilder: (context, isExpanded) => GestureDetector(
            //     onTap: () {
            //       setState(() {
            //         this.isExpanded = !isExpanded;
            //       });
            //     },
            //     child: Container(
            //       margin: EdgeInsets.zero,
            //       padding: const EdgeInsets.all(10),
            //       width: double.infinity,
            //       height: 60,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(15),
            //         color: !getThemeStateIsLight()
            //             ? darken(getThemeColor(context), 0.35)
            //             : ColorConstants.white,
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             widget.faq.value.title,
            //             style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            //                 fontFamily: FontConstantc.gilroyMedium,
            //                 color: Theme.of(context).scaffoldBackgroundColor),
            //           ),
            //           !isExpanded
            //               ? Icon(
            //                   Icons.add,
            //                   color: getThemeStateIsLight()
            //                       ? darken(getThemeColor(context), 0.35)
            //                       : ColorConstants.white,
            //                 )
            //               : Container(
            //                   margin: const EdgeInsets.all(4),
            //                   width: 15,
            //                   height: 2,
            //                   color: getThemeStateIsLight()
            //                       ? darken(getThemeColor(context), 0.35)
            //                       : ColorConstants.white,
            //                 )
            //         ],
            //       ),
            //     ),
            //   ),
            //   body: Container(
            //     padding: const EdgeInsets.all(10),
            //     child: Text(
            //       widget.faq.value.desc,
            //       style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            //           color: getThemeStateIsLight()
            //               ? darken(getThemeColor(context), 0.3)
            //               : ColorConstants.white),
            //     ),
            //   ),
            // ),
    
          ],
        ),
      ),
    );
  }
}
