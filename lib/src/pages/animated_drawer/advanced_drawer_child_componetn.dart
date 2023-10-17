import 'package:softtech_test/src/app/app_export.dart';

class AdvancedDrawerChildComponent extends StatelessWidget {
  const AdvancedDrawerChildComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 50.0, right: 10, left: 10, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // NavigationUtil.push(
                        //     context, RouteConstants.signInRoute);
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color:
                                        lighten(getThemeColor(context), 0.3))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: () {
                                  // NavigationUtil.push(
                                  //     context, RouteConstants.signInRoute);
                                },
                                child: Image.network(
                                    fit: BoxFit.fill,
                                    'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 3, right: 5),
                            height: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nabeel Khanjee',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: ColorConstants.white),
                                ),
                                Text(
                                  'nabeelshakeel966@gmail.com',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: ColorConstants.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => drawerStateChnageUpdateIndex(
                        context: context,
                        advancedDrawerController:
                            BlocProvider.of<AnimatedDrawerCubit>(context)
                                .advancedDrawerController,
                        isOpen: true,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: lighten(getThemeColor(context)),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: lighten(getThemeColor(context), 0.3)),
                              borderRadius: BorderRadius.circular(30),
                              color: lighten(getThemeColor(context)),
                            ),
                            child: Icon(
                              Icons.close,
                              size: 16,
                              color: lighten(getThemeColor(context), 0.3),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              getIt
                  .get<SharedPreferencesUtil>()
                  .removeValue(SharedPreferenceConstants.apiAuthToken)
                  .then((value) => Navigator.popAndPushNamed(
                      context, RouteConstants.splashRoute));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetsConstants.logoutImage,
                        height: 24,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
