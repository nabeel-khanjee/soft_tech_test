import 'package:softtech_test/src/app/app_export.dart';

class ConsentFormBody extends StatelessWidget {
  const ConsentFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text(
          "One Time HIPAA Consent Form",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 15),
        Text(
          "The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz pros. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Brick quiz wangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim. Sex-charged fop blew my junk TV quiz. How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! Now fax quiz Jack!  my brave ghost plead.",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorConstants.white.withOpacity(0.5),
              ),
        ),
        const SizedBox(height: 20),
        Text(
          "The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz pros. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Brick quiz wangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim. Sex-charged fop blew my junk TV quiz. How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! Now fax quiz Jack!  my brave ghost plead.",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorConstants.white.withOpacity(0.5),
              ),
        ),
        const SizedBox(height: 20),
        Text(
          "The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz pros. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Brick quiz wangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim. Sex-charged fop blew my junk TV quiz. How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! Now fax quiz Jack!  my brave ghost plead.",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorConstants.white.withOpacity(0.5),
              ),
        ),
        const SizedBox(height: 20),
        const ConsentFormTermsConditions(),
        const SizedBox(height: 20),
      ],
    );
  }
}
