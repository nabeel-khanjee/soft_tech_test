import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/audio_calling/components/audio_calling_body.dart';

class AudioCallingScreen extends StatelessWidget {
  const AudioCallingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color:
                        lighten(getThemeColor(context), 0.25).withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/icon/three_dots.svg"),
                  ),
                ),
              ),
              const Expanded(child: AudioCallingBody()),
            ],
          ),
        ),
      ),
    );
  }
}
