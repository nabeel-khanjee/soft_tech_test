import 'package:softtech_test/src/app/app_export.dart';

class OnboardingScreen extends StatelessWidget {
  // final OnboardingScreenArgs args;

  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      isGradient: false,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              AssetsConstants.doctorImageOnboardingScreen,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                darken(getThemeColor(context), 0.4),
                darken(getThemeColor(context), 0.4),
                darken(getThemeColor(context), 0.4).withOpacity(0.1),
                darken(getThemeColor(context), 0.4).withOpacity(0.1),
              ],
            )),
            padding: const EdgeInsets.all(AppConstants.kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  StringConstants.onboardingText,
                  style: FontStylesConstants.gilroy(
                    fontFamily: FontConstantc.gilroyRegular,
                    fontSize: 30,
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          NavigationUtil.popAllAndPush(
                            context,
                            RouteConstants.homeRoute,
                          );
                        },
                        child: Text(StringConstants.getStarted),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          NavigationUtil.push(
                            context,
                            RouteConstants.signInRoute,
                          );
                        },
                        child: Text(
                          'Registration',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    // const SizedBox(width: 20),
                    // Expanded(
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       NavigationUtil.push(
                    //         context,
                    //         RouteConstants.emergencyRoute,
                    //       );
                    //     },
                    //     child: Text(
                    //       'Emergency',
                    //       style: Theme.of(context).textTheme.bodyMedium,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
