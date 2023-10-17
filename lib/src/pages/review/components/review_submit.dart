import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/review/components/review_dialog.dart';

class ReviewSubmit extends StatelessWidget {
  const ReviewSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: ColorConstants.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset("assets/icon/doctor_03.png"),
                      ),
                      Text(
                        "Rate and Review",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: darken(getThemeColor(context), 0.3),
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        "Share your experience to help others",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: ColorConstants.greyText,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/icon/review_star.svg"),
                          SvgPicture.asset("assets/icon/review_star.svg"),
                          SvgPicture.asset("assets/icon/review_star.svg"),
                          SvgPicture.asset("assets/icon/review_star.svg"),
                          SvgPicture.asset("assets/icon/review_star.svg"),
                        ],
                      ),
                      Container(
                        height: 104,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorConstants.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Write your Review here",
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: ColorConstants.greyText,
                                    ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 44,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) {
                                return const ReviewDialog();
                              },
                            );
                          },
                          child: Text(
                            "Submit Feedback",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
