import 'package:softtech_test/src/app/app_export.dart';

class AllEmergenciesContainer extends StatelessWidget {
  const AllEmergenciesContainer({
    Key? key,
    required this.imageUrl,
    required this.tile,
  }) : super(key: key);

  final String imageUrl;
  final String tile;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.40,
      decoration: BoxDecoration(
        color: darken(getThemeColor(context), 0.25),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(imageUrl),
          Text(
            tile,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
