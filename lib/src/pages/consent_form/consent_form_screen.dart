import 'package:softtech_test/src/app/app_export.dart';

class ConsentFormScreen extends StatelessWidget {
  const ConsentFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: customGradientBg,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        CustomAppBar(title: "Consent Form"),
                        ConsentFormBody(),
                      ],
                    ),
                  ),
                ),
              ),
              ConsentFormButton(),
            ],
          ),
        ),
      ),
    );
  }
}
