import 'package:bloc/bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<DownloadEvent>((event, emit) async {
      emit(AppLoading());
      await Future.delayed(const Duration(seconds: 5));
      emit(AppSuccess("Downloaded!"));
    });
  }
}
