import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/components/custom_circular_icon.dart';

class AudioCallingBody extends StatelessWidget {
  const AudioCallingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dr. Rachel",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              const Image(
                height: 150,
                width: 150,
                image: AssetImage("assets/icon/female_02.png"),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("03:46"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCircularIcon(imageUrl: "assets/icon/audio.svg"),
                  CustomCircularIcon(
                    imageUrl: "assets/icon/end_call.svg",
                    color: ColorConstants.redIndicatorColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
