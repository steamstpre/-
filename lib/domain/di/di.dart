import 'package:eiva/domain/services/login_check_service/login_check_service.dart';
import 'package:eiva/feature/login_screen/bloc/bloc/login_screen_bloc_bloc.dart';
import 'package:get_it/get_it.dart';

class Provider {
  final getIt = GetIt.instance;

  void setUp() {
    getIt.registerSingleton(DependencyInjection());
    getIt.registerSingleton(LoginCheck());
  }
}

class DependencyInjection {
  LoginScreenBloc get loginBloc => LoginScreenBloc();
}
