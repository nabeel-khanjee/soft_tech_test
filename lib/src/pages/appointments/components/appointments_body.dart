import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/appointments/book_appointments/book_appointments_pageview.dart';
import 'package:softtech_test/src/pages/appointments/scheduled/scheduled_pageview.dart';

class AppointmentsBody extends StatefulWidget {
  const AppointmentsBody({super.key});

  @override
  State<AppointmentsBody> createState() => _AppointmentsBodyState();
}

class _AppointmentsBodyState extends State<AppointmentsBody> {
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
                title: StringConstants.bookAppointment,
              ),
              IndicatorWidget(
                onTap: () {
                  pageController.jumpToPage(1);
                  setState(() => currentPage = 1);
                },
                isSelected: currentPage == 1,
                title: StringConstants.scheduled,
              ),
            ],
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: const [
                BookAppointmentsPageView(),
                ScheduledPageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
