import 'package:injectable/injectable.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
//SERVICE LOCATOR PROVIDER
@InjectableInit(preferRelativeImports: true)
Future<void> serviceLocator() async {}
