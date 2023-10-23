part of 'login_screen_bloc_bloc.dart';

@freezed
class LoginScreenBlocEvent with _$LoginScreenBlocEvent {
  const factory LoginScreenBlocEvent.started() = _Started;
}