import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_screen_bloc_event.dart';
part 'login_screen_bloc_state.dart';
part 'login_screen_bloc_bloc.freezed.dart';

class LoginScreenBloc extends Bloc<LoginScreenBlocEvent, LoginScreenBlocState> {
  LoginScreenBloc() : super(_Initial()) {
    on<LoginScreenBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
