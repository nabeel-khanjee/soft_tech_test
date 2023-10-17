import 'package:softtech_test/src/app/app_export.dart';

class NewPasswordHeader extends StatelessWidget {
  const NewPasswordHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_back,
              color: ColorConstants.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Create New Password',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            'Please create new password',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorConstants.greyText),
          ),
          SvgPicture.asset("assets/icon/new_password_lock.svg"),
        ],
      ),
    );
  }
}
