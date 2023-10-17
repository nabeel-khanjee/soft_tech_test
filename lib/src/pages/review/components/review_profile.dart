import 'package:softtech_test/src/app/app_export.dart';

class ReviewProfile extends StatelessWidget {
  const ReviewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        color: darken(getThemeColor(context), 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 84,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    "assets/icon/doctor_02.png",
                    height: 84,
                    width: 74,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Dr. Rachel McAdams"),
                    Text(
                      "General Physician",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: ColorConstants.white.withOpacity(0.6),
                          ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: ColorConstants.yellowIndicatorColor,
                        ),
                        Text(
                          "4.4 (236 Reviews)",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                color: ColorConstants.white.withOpacity(0.6),
                              ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Lab Test",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Prescription",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
