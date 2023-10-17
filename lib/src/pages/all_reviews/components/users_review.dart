import 'package:softtech_test/src/app/app_export.dart';

class UsersReview extends StatelessWidget {
  const UsersReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(
          'Reviews',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 15),
        userReview(context, "Eric John"),
        userReview(context, "Anna Janne"),
        userReview(context, "John Doe"),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget userReview(BuildContext context, String userName) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 36,
              width: 36,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset("assets/icon/doctor_03.png"),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(userName),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.0),
                      child: Icon(
                        Icons.star,
                        size: 20,
                        color: ColorConstants.yellowIndicatorColor,
                      ),
                    ),
                    Text(
                      "4.9",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: ColorConstants.white.withOpacity(0.6),
                          ),
                    ),
                  ],
                ),
                Text(
                  "September 2020",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: ColorConstants.white.withOpacity(0.6),
                      ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Text(
          "Vestibulum commodo sapien non elit porttitor, vitae volutpat nibh mollis. Nulla porta risus id neque tempor, in efficitur justo imperdiet. Etiam a ex at ante tincidunt imperdiet.",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 10),
        const Divider(),
      ],
    );
  }
}
