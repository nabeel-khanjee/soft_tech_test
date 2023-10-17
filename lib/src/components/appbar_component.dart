import 'package:softtech_test/src/app/app_export.dart';

class AppBarcomponent extends StatelessWidget {
  final bool isGradient;
  final bool isBackAppBar;
  final String title;
  final bool isTitleTowLines;
  final Widget? actionTextButton;
  final Color? appBarColor;
  final double elevation;
  final List<BoxShadow>? appBarShadoow;

  const AppBarcomponent(
      {super.key,
      required this.isGradient,
      required this.title,
      required this.isBackAppBar,
      required this.isTitleTowLines,
      this.actionTextButton,
      this.appBarColor,
      this.elevation = 0,
      this.appBarShadoow});

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: BlocBuilder<AnimatedDrawerCubit, AnimatedDrawerState>(
        builder: (context, state) => Container(
          decoration: BoxDecoration(boxShadow: appBarShadoow),
          child: AppBar(
              elevation: elevation,
              centerTitle: isBackAppBar,
              actions: !isBackAppBar
                  ? [
                      InkWell(
                        // onTap: () => NavigationUtil.push(
                        //     context, RouteConstants.notificationRoute),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6.0, right: 3),
                              child: Image.asset(
                                AssetsConstants.notificationAppBarIcon,
                                color: !getThemeStateIsLight()
                                    ? (darken(getThemeColor(context), 0.35))
                                    : null,
                              ),
                            ),
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 1, color: getThemeColor(context)),
                                  color: ColorConstants.green),
                            ),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, right: 3),
                        child: IconButton(
                            onPressed: () {
                              // showGeneralDialog(
                              //   context: context,
                              //   barrierDismissible: true,
                              //   transitionDuration:
                              //       const Duration(milliseconds: 500),
                              //   barrierLabel: MaterialLocalizations.of(context)
                              //       .dialogLabel,
                              //   barrierColor: Colors.black.withOpacity(0.5),
                              //   pageBuilder: (contextBuilder, _, __) {
                              //     return Column(
                              //       mainAxisAlignment: MainAxisAlignment.start,
                              //       children: <Widget>[
                              //         Card(
                              //             color: getThemeColor(context),
                              //             child: Container(
                              //               margin: const EdgeInsets.only(
                              //                   top: kToolbarHeight / 2),
                              //               padding: const EdgeInsets.all(10),
                              //               child: Column(
                              //                 children: [
                              //                   const Row(
                              //                     mainAxisAlignment:
                              //                         MainAxisAlignment.end,
                              //                     crossAxisAlignment:
                              //                         CrossAxisAlignment.end,
                              //                     children: [
                              //                       Icon(
                              //                         Icons.close,
                              //                         color:
                              //                             ColorConstants.white,
                              //                       )
                              //                     ],
                              //                   ),
                              //                   const SizedBox(height: 30),
                              //                   Row(
                              //                     crossAxisAlignment:
                              //                         CrossAxisAlignment.center,
                              //                     mainAxisAlignment:
                              //                         MainAxisAlignment
                              //                             .spaceAround,
                              //                     children: [
                              //                       TopSheetComponent(
                              //                         image: AssetsConstants
                              //                             .homeTransparentIcon,
                              //                         onTap: () {
                              //                           Navigator.pop(context);
                              //                           BlocProvider.of<
                              //                                       AnimatedDrawerCubit>(
                              //                                   context)
                              //                               .pageController
                              //                               .jumpToPage(0);
                              //                         },
                              //                         text:
                              //                             StringConstants.home,
                              //                       ),
                              //                       TopSheetComponent(
                              //                         image: AssetsConstants
                              //                             .profileTransparentIcon,
                              //                         onTap: () {
                              //                           Navigator.pop(context);
                              //                           BlocProvider.of<
                              //                                       AnimatedDrawerCubit>(
                              //                                   context)
                              //                               .pageController
                              //                               .jumpToPage(1);
                              //                         },
                              //                         text: StringConstants
                              //                             .profile,
                              //                       ),
                              //                       TopSheetComponent(
                              //                         image: AssetsConstants
                              //                             .payNowTransparentIcon,
                              //                         onTap: () {
                              //                           Navigator.pop(context);
                              //                           BlocProvider.of<
                              //                                       AnimatedDrawerCubit>(
                              //                                   context)
                              //                               .pageController
                              //                               .jumpToPage(6);
                              //                         },
                              //                         text: 'Pay Now',
                              //                       ),
                              //                       TopSheetComponent(
                              //                         image: AssetsConstants
                              //                             .documentTransparentIcon,
                              //                         onTap: () {
                              //                           Navigator.pop(context);
                              //                           BlocProvider.of<
                              //                                       AnimatedDrawerCubit>(
                              //                                   context)
                              //                               .pageController
                              //                               .jumpToPage(4);
                              //                         },
                              //                         text: StringConstants
                              //                             .documents,
                              //                       ),
                              //                     ],
                              //                   )
                              //                 ],
                              //               ),
                              //             )),
                              //       ],
                              //     );
                              //   },
                              //   transitionBuilder: (context, animation,
                              //       secondaryAnimation, child) {
                              //     return SlideTransition(
                              //       position: CurvedAnimation(
                              //         parent: animation,
                              //         curve: Curves.easeOut,
                              //       ).drive(Tween<Offset>(
                              //         begin: const Offset(0, -1.0),
                              //         end: Offset.zero,
                              //       )),
                              //       child: child,
                              //     );
                              //   },
                              // );
                            },
                            icon: const Icon(Icons.menu)),
                      )
                    ]
                  : actionTextButton != null
                      ? [actionTextButton!]
                      : [
                          Container(
                            width: 50,
                          )
                        ],
              backgroundColor: getThemeStateIsLight()
                  ? isGradient
                      ? Colors.transparent
                      : appBarColor ?? Theme.of(context).scaffoldBackgroundColor
                  : appBarColor ?? Theme.of(context).scaffoldBackgroundColor,
              leading: isBackAppBar
                  ? GestureDetector(
                      onTap: () => NavigationUtil.pop(context),
                      child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorConstants.white),
                          child: const Icon(
                            Icons.arrow_back,
                            color: ColorConstants.black,
                          )),
                    )
                  : const DrawerLeadingComponent(),
              title: !isTitleTowLines
                  ? SizedBox(
                      // width: MediaQuery.of(context).size.width / 1,
                      child: Text(
                        title,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : const HomeTitleComponent()),
        ),
      ),
    );
  }
}

class TopSheetComponent extends StatelessWidget {
  const TopSheetComponent({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });
  final String image;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 44,
            width: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: darken(getThemeColor(context), 0.35)),
            child: Image.asset(
              image,
              height: 20,
              width: 20,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: ColorConstants.white,
                fontFamily: FontConstantc.gilroyMedium),
          )
        ],
      ),
    );
  }
}
