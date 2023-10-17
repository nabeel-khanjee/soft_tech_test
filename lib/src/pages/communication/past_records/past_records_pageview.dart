import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/communication/past_records/components/past_records_body.dart';
import 'package:softtech_test/src/pages/communication/past_records/components/past_records_months.dart';

class PastRecordsPageView extends StatelessWidget {
  const PastRecordsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PastRecordsMonths(),
        PastRecordsBody(),
      ],
    );
  }
}
