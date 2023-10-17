import 'package:equatable/equatable.dart';
import 'package:softtech_test/src/domain/model/package.dart';

class Subscription extends Equatable {
  final int remainingDays;
  final String startDate;
  final String endDate;
  final int isYearly;
  final Package package;
  const Subscription({
    required this.remainingDays,
    required this.startDate,
    required this.endDate,
    required this.package,
    required this.isYearly,
  });

  @override
  List<Object?> get props => [
        remainingDays,
        startDate,
        endDate,
        package,
        isYearly,
      ];
}
