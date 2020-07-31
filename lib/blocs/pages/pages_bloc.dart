import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'pages_state.dart';
part 'pages_event.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState> {
  PagesBloc(PagesState initialState) : super(OnInitialPages());

  @override
  Stream<PagesState> mapEventToState(PagesEvent event) async* {
    if(event is GotoMainPages) {
      yield OnMainPages();
    }else if (event is GotoLoginPages) {
      yield OnLoginPages();
    }else if (event is GotoRegisterPages) {
      yield OnRegisterPages();
    }else if (event is GotoDashboardPages) {
      yield OnDashboardPages();
    }else if (event is GotoAddPFPages) {
      yield OnAddPFPages();
    }
  }
}