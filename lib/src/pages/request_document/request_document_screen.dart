import 'package:softtech_test/src/app/app_export.dart';

class RequestDocumentScreen extends StatelessWidget {
  const RequestDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: customGradientBg,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SafeArea(
            child: Column(
              children: [
                CustomAppBar(title: "Request a doc"),
                RequestDocumentBody(),
                Expanded(
                  child: RequestDocumentButton(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
