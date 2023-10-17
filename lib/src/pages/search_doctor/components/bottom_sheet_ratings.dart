import 'package:softtech_test/src/app/app_export.dart';

class BottomSheetRatings extends StatelessWidget {
  const BottomSheetRatings({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ratings = [
      "1",
      "2",
      "3",
      "4",
      "5",
    ];
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: ratings.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(
                right: (index == ratings.length - 1) ? 0.0 : 10.0),
            child: Container(
              width: 60,
              decoration: BoxDecoration(
                color: lighten(getThemeColor(context), 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.star,
                    color: ColorConstants.yellowGolden,
                  ),
                  Text(ratings[index]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
