import 'package:logger/logger.dart';
import 'package:softtech_test/src/data/common/object_mapper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceRepositoryImpl {
  final SharedPreferences sharedPreferences;
  final Logger logger;
  final ObjectMapper objectMapper;

// 1 day

  SharedPreferenceRepositoryImpl({
    required this.sharedPreferences,
    required this.logger,
    required this.objectMapper,
  });
}
