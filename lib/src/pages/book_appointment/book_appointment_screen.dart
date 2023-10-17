import 'package:softtech_test/src/app/app_export.dart';

int selectedTimeAppointment = 0;

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  @override
  void initState() {
    // TODO: implement initState
    _getListOfTimingWidget(
        initialTime: 8 * 60 * 60,
        finalTime: 20 * 60 * 60,
        timeGapInMinutes: 30 * 60);
    super.initState();
  }

  List<int> listOfTime = [];

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        bottomNavigationBar: BottomNavBarAppointmentBookScreen(
          text: 'Next',
          onTap: () {
            NavigationUtil.push(context, RouteConstants.bookAppontmentTwoRoute);
          },
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(0),
                child: Column(children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      child: const Column(children: [
                        HomeWidgetHeading(
                            title: 'Select Date',
                            isSeeAll: false,
                            bottonPadding: 10,
                            topPadding: 20),
                        CalenderAppointmentBook(),
                        HomeWidgetHeading(
                            title: 'Select Hour',
                            isSeeAll: false,
                            bottonPadding: 10,
                            topPadding: 20)
                      ])),
                  Wrap(
                      children: listOfTime
                          .asMap()
                          .entries
                          .map((time) => InkWell(
                              onTap: () => setState(
                                  () => selectedTimeAppointment = time.value),
                              child: TimeComponentAppointment(time: time)))
                          .toList())
                ]))),
        isGradient: false,
        appBar: const AppBarcomponent(
            isGradient: false,
            title: 'Book Appointment',
            isBackAppBar: true,
            isTitleTowLines: false));
  }

  void _getListOfTimingWidget(
      {required int initialTime,
      required int finalTime,
      required int timeGapInMinutes}) {
    for (int index = initialTime;
        index <= finalTime;
        index += timeGapInMinutes) {
      listOfTime.add(index);
    }
    return;
  }
}
