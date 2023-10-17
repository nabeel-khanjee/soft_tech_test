import 'package:softtech_test/src/app/app_export.dart';

class FAQComponentDoctorDetailScreen extends StatelessWidget {
  const FAQComponentDoctorDetailScreen({
    super.key,
    required this.faqList,
    this.isHeading = true,
  });

  final bool isHeading;

  final List<FaqList> faqList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isHeading)
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: DoctorDetailHeadingOne(
                        heading: 'Frequently Asked Questions',
                        headingColor: !getThemeStateIsLight()
                            ? darken(getThemeColor(context), 0.35)
                            : ColorConstants.white,
                        fontFamily: FontConstantc.gilroySemiBold),
                  ),
                  InkWell(
                    onTap: () {
                      NavigationUtil.push(context, RouteConstants.faqRoute);
                    },
                    child: DoctorDetailHeadingTwo(
                      color: getThemeStateIsLight()
                          ? lighten(getThemeColor(context), 0.35)
                          : darken(getThemeColor(context), 0.35),
                      text: 'View All',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        Column(
          children: faqList
              .asMap()
              .entries
              .map((faq) => ExpansionPanelFaqs(faq: faq))
              .toList(),
        ),
      ],
    );
  }
}
