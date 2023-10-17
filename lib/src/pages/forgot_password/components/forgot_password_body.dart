import 'package:softtech_test/src/app/app_export.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _emailField(context),
        const SizedBox(height: 20),
        _forgotPasswordButton(context),
        const SizedBox(height: 40),
        _rememberPassword(context),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _emailField(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: darken(getThemeColor(context), 0.25),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SvgPicture.asset('assets/icon/email.svg'),
        ),
        prefixIconConstraints: const BoxConstraints(minHeight: 20),
        labelText: 'Email Address',
        labelStyle: const TextStyle(color: ColorConstants.white),
      ),
    );
  }

  Widget _forgotPasswordButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          NavigationUtil.push(
            context,
            RouteConstants.otpRoute,
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'Send',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _rememberPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Remember Password? ',
        style:
            Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),
        children: [
          TextSpan(
            text: 'Sign In',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.lightBlue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                NavigationUtil.popAllAndPush(
                  context,
                  RouteConstants.signInRoute,
                );
              },
          ),
        ],
      ),
    );
  }
}
