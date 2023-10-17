import 'package:softtech_test/src/app/app_export.dart';

class ClaimDetailScreen extends StatelessWidget {
  const ClaimDetailScreen({
    super.key,
    required this.diagnosisCodeList,
    required this.cPTHCPCSCodeList,
  });

  final List<String> diagnosisCodeList;
  final List<CPTHCPCSCode> cPTHCPCSCodeList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          const ClaimCompleteDetailsComponent(
            isPayment: false,
          ),
          const SizedBox(height: 32),
          const SecondaryHeading(text: 'Diagnosis Code'),
          const SizedBox(height: 12),
          DiagnosisCodeGrid(diagnosisCodeList: diagnosisCodeList),
          const SizedBox(height: 32),
          const SecondaryHeading(text: 'CPT/HCPCS Code (s)'),
          const SizedBox(height: 12),
          CPTHCPCSCodeListComponent(cPTHCPCSCodeList: cPTHCPCSCodeList)
        ],
      ),
    );
  }
}
