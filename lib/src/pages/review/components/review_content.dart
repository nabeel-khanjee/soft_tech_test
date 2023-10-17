import 'package:softtech_test/src/app/app_export.dart';

class ReviewContent extends StatelessWidget {
  const ReviewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Please share your review",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          "Tell us about your experience with Dr. Rachel Adams",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorConstants.white.withOpacity(0.6),
              ),
        ),
      ],
    );
  }
}
