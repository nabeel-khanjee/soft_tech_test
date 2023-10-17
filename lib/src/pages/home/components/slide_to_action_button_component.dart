import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:softtech_test/src/app/app_export.dart';
import 'package:slide_action/slide_action.dart';

class SlideActionBtn extends StatelessWidget {
  const SlideActionBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: SimpleExample(stretchThumb: true, callback: () {}),

        // child: SlideAction(
        //   trackBuilder: (context, state) {
        //     return Container(
        //         width: lerpDouble(
        //             1, 0, (state.thumbFractionalPosition * 2).clamp(0.0, 1.0))!,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(100),
        //             border: Border.all(color: ColorConstants.greyText),
        //             // color: Colors.white.withOpacity(0.2),
        //             gradient: linerGradientForApp(
        //                 isVertical: true,
        //                 color: !state.isPerformingAction
        //                     ? ColorConstants.redIndicatorColor
        //                     : ColorConstants.royalBlue)
        //             // boxShadow: const [
        //             //   // BoxShadow(
        //             //   //   color: Colors.black26,
        //             //   //   blurRadius: 8,
        //             //   // ),
        //             // ],
        //             ),
        //         child: Opacity(
        //           opacity: !state.isPerformingAction
        //               ? lerpDouble(1, 0,
        //                   (state.thumbFractionalPosition * 2).clamp(0.0, 1.0))!
        //               : 1,
        //           child: Center(
        //             child: Text(
        //               // Show loading if async operation is being performed
        //               state.isPerformingAction
        //                   ? "Loading..."
        //                   : "Slide To Emergency Call Now",
        //               style: TextStyle(shadows: [
        //                 Shadow(offset: Offset(5, 5), blurRadius: 7)
        //               ]),
        //             ),
        //           ),
        //         ));
        //   },
        //   thumbBuilder: (context, state) {
        //     return Container(
        //       margin: const EdgeInsets.all(0),
        //       decoration: BoxDecoration(
        //         color: Colors.transparent,
        //         borderRadius: BorderRadius.circular(16),
        //       ),
        //       child: Center(
        //         // Show loading indicator if async operation is being performed
        //         child: state.isPerformingAction
        //             ? const CupertinoActivityIndicator(
        //                 color: Colors.white,
        //               )
        //             : Image.asset(AssetsConstants.emergencyMainScreenImage),
        //       ),
        //     );
        //   },
        //   action: () async {
        //     // Async operation
        //     await Future.delayed(
        //       const Duration(seconds: 2),
        //       () => NavigationUtil.push(context, RouteConstants.emergencyRoute),
        //     );
        //   },
        // ),
      ),
    );
  }
}

class SimpleExample extends StatelessWidget {
  const SimpleExample({
    this.rightToLeft = false,
    this.callback,
    this.stretchThumb = false,
    this.resetCurve = Curves.easeOut,
    this.resetDuration = const Duration(milliseconds: 400),
    this.thumbWidth,
    this.trackHeight = 64,
    Key? key,
  }) : super(key: key);

  final bool rightToLeft;
  final FutureOr<void> Function()? callback;
  final bool stretchThumb;
  final Curve resetCurve;
  final Duration resetDuration;
  final double? thumbWidth;
  final double trackHeight;

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      trackHeight: trackHeight,
      snapAnimationCurve: resetCurve,
      snapAnimationDuration: resetDuration,
      stretchThumb: stretchThumb,
      thumbWidth: thumbWidth,
      rightToLeft: rightToLeft,
      trackBuilder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: ColorConstants.greyText),
            color: Colors.white.withOpacity(0.2),
            // gradient: linerGradientForApp(
            //     isVertical: true,
            //     color: !state.isPerformingAction
            //         ? ColorConstants.redIndicatorColor
            //         : ColorConstants.royalBlue)
            // boxShadow: const [
            //   // BoxShadow(
            //   //   color: Colors.black26,
            //   //   blurRadius: 8,
            //   // ),
            // ],
          ),

          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(100),
          //   color: Colors.white,
          //   boxShadow: const [
          //     BoxShadow(
          //       color: Colors.black26,
          //       blurRadius: 8,
          //     ),
          //   ],
          // )

          // ,
          child: Opacity(
            opacity: !state.isPerformingAction
                ? lerpDouble(
                    1, 0, (state.thumbFractionalPosition * 2).clamp(0.0, 1.0))!
                : 1,
            child: Center(
              child: Text(
                // Show loading if async operation is being performed
                state.isPerformingAction
                    ? "Loading..."
                    : "Slide To Emergency Call Now",
                style: const TextStyle(
                    shadows: [Shadow(offset: Offset(5, 5), blurRadius: 7)]),
              ),
            ),

            // child: Center(
            //   child: Text(
            //     "Thumb fraction: ${state.thumbFractionalPosition.toStringAsPrecision(2)}",
            //   ),
          ),
        );
      },
      thumbBuilder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            gradient: linerGradientForApp(
                isVertical: true,
                color: !state.isPerformingAction
                    ? ColorConstants.redIndicatorColor
                    : ColorConstants.royalBlue),

            // color: ColorConstants.redIndicatorColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: stretchThumb ? 64 : double.infinity,
              child: Center(
                child: state.isPerformingAction
                    ? const CupertinoActivityIndicator(
                        color: Colors.white,
                      )
                    : Image.asset(AssetsConstants.emergencyMainScreenImage),

                // child: Icon(
                //   rightToLeft ? Icons.chevron_left : Icons.chevron_right,
                //   color: Colors.white,
                // ),
              ),
            ),
          ),
        );
      },
      action: () async {
        // Async operation
        await Future.delayed(
          const Duration(seconds: 2),
          () => NavigationUtil.push(context, RouteConstants.emergencyRoute),
        );
      },

      // action: callback,
    );
  }
}
