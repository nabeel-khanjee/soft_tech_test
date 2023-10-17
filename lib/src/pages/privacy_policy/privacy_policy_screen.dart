import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/privacy_policy/components/privacy_policy_body.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customGradientBg,
        child: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  CustomAppBar(title: "Privacy Policy"),
                  PrivacyPolicyBody(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
