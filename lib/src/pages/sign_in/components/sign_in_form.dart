import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/sign_in/cubit/sign_in_cubit.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController =
        TextEditingController(text: 'mor_2314');
    TextEditingController passwordController =
        TextEditingController(text: "83r5^_");

    return Column(
      children: [
        const SizedBox(height: 50),
        Text(StringConstants.account),
        const SizedBox(height: 25),
        TextFormFieldComponent(
            controller: userNameController, label: 'User Name'),
        const SizedBox(height: 20),
        TextFormFieldComponent(
            controller: passwordController, label: 'Password'),
        const SizedBox(height: 10),
        // GestureDetector(
        //   onTap: () {
        //     NavigationUtil.push(
        //       context,
        //       RouteConstants.forgotPasswordRoute,
        //     );
        //   },
        //   child: Align(
        //     alignment: Alignment.centerRight,
        //     child: Text(StringConstants.forgot),
        //   ),
        // ),
        const SizedBox(height: 40),
        BlocConsumer<SignInCubit, SignInState>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  loaded: (token) {
                    getIt.get<SharedPreferencesUtil>().setString(
                        SharedPreferenceConstants.apiAuthToken, token.token);
                    return NavigationUtil.pushReplace(context,
                        RouteConstants.homeRoute, RouteConstants.signInRoute);
                  },
                ),
            builder: (context, state) => state.maybeWhen(
                loading: () => ElevatedButton(
                    onPressed: () {
                      context.read<SignInCubit>().signIn(
                          userName: userNameController.text,
                          password: passwordController.text);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Loading...'),
                        SizedBox(width: 10),
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: AppProgressIndicator(
                            color: ColorConstants.white,
                          ),
                        )
                      ],
                    )),
                loaded: (token) => ElevatedButton(
                    onPressed: () {
                      context.read<SignInCubit>().signIn(
                          userName: userNameController.text,
                          password: passwordController.text);
                    },
                    child: const Text('Success Sign In')),
                error: (message) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            context.read<SignInCubit>().signIn(
                                userName: userNameController.text,
                                password: passwordController.text);
                          },
                          child: const Text("Retry Login")),
                      const SizedBox(height: 10),
                      Text(
                        message,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: ColorConstants.redIndicatorColor),
                      ),
                    ],
                  );
                },
                orElse: () => ElevatedButton(
                    onPressed: () {
                      context.read<SignInCubit>().signIn(
                          userName: userNameController.text,
                          password: passwordController.text);
                    },
                    child: const Text('Sign In')))),
        const SizedBox(height: 50),
        // const SocialLogin(),
      ],
    );
  }
}
