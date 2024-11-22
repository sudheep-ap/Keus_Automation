import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:keus_automation_task/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.init();
}
