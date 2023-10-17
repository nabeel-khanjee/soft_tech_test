import 'package:softtech_test/src/app/app_export.dart';

class ShowBottomSheetComponent {
  void showBottomSheet({
    required Widget content, //column or list
    required BuildContext context,
    bool removeHeight = false,
    bool isControlled = false,
    bool removePadding = false,
    double customRemoveHeight = 0,
    bool isDismissible = true,
    bool isDrag = true,
  }) {
    showModalBottomSheet(
      isScrollControlled: isControlled,
      backgroundColor: Colors.transparent,
      isDismissible: isDismissible,
      enableDrag: isDrag,
      context: context,
      builder: (
        c,
      ) {
        return FractionallySizedBox(
          heightFactor: customRemoveHeight == 0
              ? removeHeight
                  ? null
                  : 0.8
              : removeHeight
                  ? null
                  : 0.8,
          // widthFactor: MediaQuery.of(context).size.width * 0.8,
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            decoration: const BoxDecoration(
              color: ColorConstants.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    removePadding ? EdgeInsets.zero : const EdgeInsets.all(15),
                child: content,
              ),
            ),
          ),
        );
      },
    );
  }
}
