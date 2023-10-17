import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/review/components/review_content.dart';
import 'package:softtech_test/src/pages/review/components/review_profile.dart';
import 'package:softtech_test/src/pages/review/components/review_submit.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomAppBar(title: "Review"),
              SizedBox(height: 20),
              ReviewContent(),
              SizedBox(height: 10),
              ReviewProfile(),
              SizedBox(height: 20),
              ReviewSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}
