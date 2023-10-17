import 'package:softtech_test/src/app/app_export.dart';

class ResultIdentifiedRow extends StatelessWidget {
  const ResultIdentifiedRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            StringConstants.result,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontFamily: FontConstantc.gilroySemiBold),
          ),
          Text(
            StringConstants.identified,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: FontConstantc.gilroySemiBold,
                color: ColorConstants.green),
          ),
        ],
      ),
    );
  }
}
