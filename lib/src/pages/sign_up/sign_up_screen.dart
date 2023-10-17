import 'package:softtech_test/src/app/app_export.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back, color: ColorConstants.white),
                  Text(
                    'Create New Account',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Container(),
                ],
              ),
              const SizedBox(height: 20),
              const Image(
                image: AssetImage("assets/images/logo.png"),
                height: 70,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              const SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
