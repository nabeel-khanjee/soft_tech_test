import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/doctor_detail/list_data/faq_list_data.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/faq_image.png',
                        // height: 189,
                        // width: 198,
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 30,
                // ),
                FAQComponentDoctorDetailScreen(
                    isHeading: false, faqList: faqList)
              ],
            ),
          ),
        ),
        isBackAppBar: true,
        appbarText: 'Faq'.toUpperCase());
  }
}
