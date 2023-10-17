import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/sign_up/components/consent_form.dart';
import 'package:softtech_test/src/pages/sign_up/components/disclaimer.dart';
import 'package:softtech_test/src/pages/sign_up/components/privacy_policy.dart';

part 'sign_up_form.freezed.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var selectedCountry =
      const Country(name: "Pakistan", code: "+92", flag: "assets/icon/pk.svg");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        _usernameField(context),
        const SizedBox(height: 20),
        _emailField(context),
        const SizedBox(height: 20),
        _mobileNumberField(context),
        const SizedBox(height: 20),
        _locationField(context),
        const SizedBox(height: 20),
        _passwordField(context),
        const SizedBox(height: 20),
        _confirmPasswordField(context),
        const SizedBox(height: 20),
        const TermsConditions(),
        const SizedBox(height: 5),
        const PrivacyPolicy(),
        const SizedBox(height: 5),
        const DisClaimer(),
        const SizedBox(height: 5),
        const ConsentForm(),
        const SizedBox(height: 20),
        _signUpButton(context),
        const SizedBox(height: 20),
        const AlreadyAccount(),
      ],
    );
  }

  Widget _usernameField(BuildContext context) {
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
          child: SvgPicture.asset('assets/icon/person.svg'),
        ),
        prefixIconConstraints: const BoxConstraints(minHeight: 20),
        labelText: 'Name',
        labelStyle: const TextStyle(color: ColorConstants.white),
      ),
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
        labelText: 'Email',
        labelStyle: const TextStyle(color: ColorConstants.white),
      ),
    );
  }

  Widget _mobileNumberField(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: darken(getThemeColor(context), 0.25),
            border: Border.all(color: ColorConstants.white),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: DropdownButton<Country>(
            value: selectedCountry,
            underline: Container(),
            dropdownColor: darken(getThemeColor(context), 0.25),
            onChanged: (Country? newValue) {
              setState(() {
                selectedCountry = newValue!;
              });
            },
            items: countries
                .map<DropdownMenuItem<Country>>(
                  (Country country) => DropdownMenuItem<Country>(
                    value: country,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          country.flag,
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: darken(getThemeColor(context), 0.25),
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              border: const OutlineInputBorder(
                // borderRadius: BorderRadius.circular(15),

                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                borderSide: BorderSide.none,
              ),
              labelText: 'Contact No',
              labelStyle: const TextStyle(color: ColorConstants.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _locationField(BuildContext context) {
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
          child: SvgPicture.asset('assets/icon/location.svg'),
        ),
        prefixIconConstraints: const BoxConstraints(minHeight: 20),
        labelText: 'Location',
        labelStyle: const TextStyle(color: ColorConstants.white),
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
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
          child: SvgPicture.asset('assets/icon/password.svg'),
        ),
        prefixIconConstraints: const BoxConstraints(minHeight: 20),
        labelText: 'Password',
        labelStyle: const TextStyle(color: ColorConstants.white),
      ),
    );
  }

  Widget _confirmPasswordField(BuildContext context) {
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
          child: SvgPicture.asset('assets/icon/password.svg'),
        ),
        prefixIconConstraints: const BoxConstraints(minHeight: 20),
        labelText: 'Confirm Password',
        labelStyle: const TextStyle(color: ColorConstants.white),
      ),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          NavigationUtil.push(
            context,
            RouteConstants.homeRoute,
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'Sign Up',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required String code,
    required String flag,
  }) = _Country;
}

List<Country> countries = [
  const Country(name: "Pakistan", code: "+92", flag: "assets/icon/pk.svg"),
  const Country(name: "USA", code: "+1", flag: "assets/icon/us.svg"),
  const Country(name: "UAE", code: "+971", flag: "assets/icon/ae.svg"),
];
