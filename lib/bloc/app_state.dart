part of 'app_bloc.dart';

abstract class AppState {}

class AppInitial extends AppState {}

class AppLoading extends AppState {}

class AppSuccess extends AppState {
  final String result;
  AppSuccess(this.result);
}
