import 'package:softtech_test/src/app/app_export.dart';

class MedicationsScreen extends StatelessWidget {
  const MedicationsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Medications> medications = [
      Medications(
        title: 'Ibuprofen',
        dose: '200mg',
        type: StringConstants.tablet,
        isNotification: true,
        number: 1,
        inEvery: 6,
      ),
      Medications(
        title: 'Ibuprofen',
        dose: '200mg',
        type: 'Capsule',
        isNotification: false,
        number: 1,
        inEvery: 6,
      ),
      Medications(
        title: 'Ibuprofen',
        dose: '200mg',
        type: StringConstants.tablet,
        isNotification: true,
        number: 1,
        inEvery: 6,
      ),
      Medications(
        title: 'Ibuprofen',
        dose: '200mg',
        type: 'Capsule',
        isNotification: false,
        number: 1,
        inEvery: 6,
      ),
    ];

    return IsGradientBackGround(
      appbarText: StringConstants.medications,
      isBackAppBar: false,
      body: MainScaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: medications
                  .asMap()
                  .entries
                  .map((element) => MedicationTileWidget(element: element))
                  .toList(),
            ),
          ),
        ),

        // body: Container(),
        isGradient: true,
      ),
    );
  }
}
