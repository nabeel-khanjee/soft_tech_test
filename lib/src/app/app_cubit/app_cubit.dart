import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:softtech_test/src/domain/model/user.dart';
import 'package:softtech_test/src/util/logger_utils.dart';
import 'package:softtech_test/src/wrapper/navigation_wrapper.dart';
import 'package:softtech_test/src/wrapper/setting_wrapper.dart';

part 'app_state.dart';

enum ProfileCompletionStatus {
  phoneNumMissing('phoneNumMissing'),
  nameEmailMissing('nameEmailMissing'),
  isCompleted('isCompleted');

  final String value;

  const ProfileCompletionStatus(this.value);
}

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  UserModel? _user;
  List<NavigationWrapper> _setOfScreens = [];

  UserModel? get user => _user;

  set user(_) => _updateUser(_);

  void _updateUser(UserModel? userModel) {
    _user = userModel;
    LoggerUtil.logs('***updating');
    emit(AppUpdateUser(_user));
    LoggerUtil.logs('***updated');
  }

  bool get isLoggedIn => _user != null;

  List<NavigationWrapper> get getSetOfScreens => _setOfScreens;

  /// Callbacks to use after the login/signup successfully
  List<Future<void> Function()> callBacks = [];

  void clearSetOfScreens() {
    _setOfScreens = [];
    _log();
    emit(AppUpdateSetOfScreensUser(null));
  }

  void _log() {
    LoggerUtil.logs(
      'Updated Navigation List: \n'
      '${_setOfScreens.map(
        (e) => '${e.toJson()}\n',
      )}',
    );
  }

  // ignore: use_setters_to_change_properties
  void pushSetOfScreens(NavigationWrapper _) {
    _setOfScreens.add(_);
    _log();
    emit(AppUpdateSetOfScreensUser(_));
  }

  void pushReplaceSetOfScreens(NavigationWrapper _) {
    if (_setOfScreens.isNotEmpty) {
      _setOfScreens.removeLast();
    }
    _setOfScreens.add(_);
    _log();
    emit(AppUpdateSetOfScreensUser(_));
  }

  void popSetOfScreens() {
    _setOfScreens.removeLast();
    _log();
    emit(AppUpdateSetOfScreensUser(null));
  }

  void popAllPushSetOfScreens(NavigationWrapper _) {
    _setOfScreens
      ..clear()
      ..add(_);
    _log();
    emit(AppUpdateSetOfScreensUser(_));
  }

  /// Selected family member id for scan
  String? selectedFamilyMemberId;

  Future<void> buttonIsOpen(bool currentValue) async {
    emit(AppCheckButtonState(currentValue = !currentValue));
  }

  bool isRightDirection = false;
  Settings? settings;

  bool isUrdu(String currentLocal) {
    if (currentLocal == 'ur_PK') {
      return true;
    }
    return false;
  }

  ProfileCompletionStatus isProfileIncomplete() {
    if (user?.phone == '' || user?.phone == null) {
      return ProfileCompletionStatus.phoneNumMissing;
    } else if (user?.name == '' ||
        user?.name == null ||
        user?.email == '' ||
        user?.email == null) {
      return ProfileCompletionStatus.nameEmailMissing;
    } else {
      return ProfileCompletionStatus.isCompleted;
    }
  }
}
