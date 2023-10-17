import 'package:softtech_test/src/app/app_export.dart';

class UserProfileComponent extends StatelessWidget {
  const UserProfileComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 5, color: getThemeColor(context))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                    fit: BoxFit.fill,
                    'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorConstants.green,
                    border: Border.all(
                        width: 4, color: darken(getThemeColor(context), 0.2))),
                child: const Icon(
                  Icons.camera_alt,
                  color: ColorConstants.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Nabeel Khanjee',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'nabeelshakeel966@gmail.com',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: lighten(getThemeColor(context), 0.25)),
              )
            ],
          ),
        )
      ],
    ));
  }
}
