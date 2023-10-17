import 'package:softtech_test/src/app/app_export.dart';

class WriteReview extends StatelessWidget {
  const WriteReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          "Reviews",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 360,
          decoration: BoxDecoration(
            color: darken(getThemeColor(context), 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 10,
                          color: ColorConstants.yellowIndicatorColor,
                        ),
                        Text(
                          "4.9",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icon/chat.svg"),
                        Text(
                          "348 Reviews",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Container(),
                    Container(),
                  ],
                ),
                const WriteReviewContent(),
                Theme(
                  data: ThemeData(
                    inputDecorationTheme: InputDecorationTheme(
                      fillColor: ColorConstants.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60, // Increase the height as per your requirement
                    decoration: BoxDecoration(
                      color: ColorConstants.white, // Background color
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: "Write your Review",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: ColorConstants.greyText),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 44,
                  width: 138,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class WriteReviewContent extends StatelessWidget {
  const WriteReviewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset("assets/icon/doctor_02.png"),
        ),
        const SizedBox(height: 10),
        Text(
          "Rate and review",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          "Share your experience to help others",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: ColorConstants.greyText),
        ),
        const SizedBox(height: 5),
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
      ],
    );
  }
}
