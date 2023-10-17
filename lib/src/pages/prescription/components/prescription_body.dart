import 'package:softtech_test/src/app/app_export.dart';

class PrescriptionBody extends StatelessWidget {
  const PrescriptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "All Prescriptions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    NavigationUtil.push(
                      context,
                      RouteConstants.viewPrescriptionRoute,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      height: 72,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: lighten(getThemeColor(context), 0.05),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Prescription ${index + 1}"),
                            Text(
                              "${index + 1} July, 2021",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color:
                                        ColorConstants.white.withOpacity(0.6),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
