import 'package:softtech_test/src/app/app_export.dart';

class DoctorDetailAndBookNowWidget extends StatelessWidget {
  const DoctorDetailAndBookNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.drLouisaJackson,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: FontConstantc.gilroySemiBold,
                    color: ColorConstants.black),
              ),
              Text(StringConstants.heartSpecialist,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontFamily: FontConstantc.gilroySemiBold,
                      color: ColorConstants.greyText)),
            ],
          ),
          SizedBox(
              height: 38,
              width: 96,
              child: ElevatedButton(
                  onPressed: () {},
                  style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(0)),
                      textStyle: MaterialStatePropertyAll(
                          Theme.of(context).textTheme.bodySmall)),
                  child: Text(
                    StringConstants.bookNow,
                  )))
        ],
      ),
    );
  }
}
