import 'package:softtech_test/src/app/app_export.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              OTPHeader(),
              OTPBody(),
            ],
          ),
        ),
      ),
    );
  }
}
