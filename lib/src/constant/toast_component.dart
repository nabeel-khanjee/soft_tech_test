import 'package:softtech_test/src/app/app_export.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastComponent2 {
  final BuildContext context;
  static late FToast _fToast;

  ToastComponent2(this.context) {
    _fToast = FToast().init(context);
  }

  void removeQueuedToasts() {
    _fToast.removeQueuedCustomToasts();
  }

  void showToast(
    BuildContext context,
    String message, {
    bool makeToastPositionBottom = false,
    bool extendDurationTime = false,
  }) {
    final Widget toast = Padding(
      padding: EdgeInsets.only(
        top: 12,
        left: 24,
        right: 24,
        bottom: makeToastPositionBottom ? 34 : 12,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorConstants.royalBlue),
          color: ColorConstants.royalBlue,
        ),
        // width: MediaQuery.of(context).size.width * .9,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.info,
                  color: ColorConstants.royalBlue,
                ),
                SizedBox(width: 12),
              ],
            ),
            Flexible(
              child: Text(
                message,
                maxLines: 5,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );

    _fToast.showToast(
      child: toast,
      gravity: makeToastPositionBottom ? ToastGravity.BOTTOM : ToastGravity.TOP,
      toastDuration: Duration(seconds: extendDurationTime ? 5 : 3),
    );
  }
}

class ToastComponent3 {
  final BuildContext context;
  static late FToast _fToast;

  ToastComponent3(this.context) {
    _fToast = FToast().init(context);
  }

  void removeQueuedToasts() {
    _fToast.removeQueuedCustomToasts();
  }

  void showToast(
    BuildContext context,
    String message, {
    bool makeToastPositionBottom = false,
    bool extendDurationTime = false,
  }) {
    final Widget toast = Padding(
      padding: EdgeInsets.only(
        top: 12,
        left: 24,
        right: 24,
        bottom: makeToastPositionBottom ? 34 : 12,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorConstants.redIndicatorColor),
          color: ColorConstants.redIndicatorColor.withOpacity(0.5),
        ),
        // width: MediaQuery.of(context).size.width * .9,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row(
            //   children: const [
            //     Icon(
            //       Icons.info,
            //       color: ColorConstants.blue,
            //     ),
            //     SizedBox(width: 12),
            //   ],
            // ),
            Flexible(
              child: Text(
                message,
                maxLines: 5,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );

    _fToast.showToast(
      child: toast,
      gravity: makeToastPositionBottom ? ToastGravity.BOTTOM : ToastGravity.TOP,
      toastDuration: Duration(seconds: extendDurationTime ? 5 : 3),
    );
  }
}
