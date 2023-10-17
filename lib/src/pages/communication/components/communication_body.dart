import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/communication/past_records/past_records_pageview.dart';
import 'package:softtech_test/src/pages/communication/scheduled/scheduled_pageview.dart';

class CommunicationBody extends StatefulWidget {
  const CommunicationBody({super.key});

  @override
  State<CommunicationBody> createState() => _CommunicationBodyState();
}

class _CommunicationBodyState extends State<CommunicationBody> {
  PageController pageController = PageController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                title: StringConstants.scheduled,
              ),
              IndicatorWidget(
                onTap: () {
                  pageController.jumpToPage(1);
                  setState(() => currentPage = 1);
                },
                isSelected: currentPage == 1,
                title: "Past Records",
              ),
            ],
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: const [
                ScheduledPageView(),
                PastRecordsPageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
