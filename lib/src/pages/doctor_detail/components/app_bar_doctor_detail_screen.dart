import 'package:softtech_test/src/app/app_export.dart';

class AppBarDoctorDetailScreen extends StatelessWidget {
  const AppBarDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: GestureDetector(
        onTap: () => NavigationUtil.pop(context),
        child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorConstants.white),
            child: const Icon(
              Icons.arrow_back,
              color: ColorConstants.black,
            )),
      ),
      expandedHeight: 400.0,
      flexibleSpace: FlexibleSpaceBar(
        // title: Text('Goa', textScaleFactor: 1),
        background: Image.asset(
          AssetsConstants.doctorDetailImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
