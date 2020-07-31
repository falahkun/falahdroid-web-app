part of 'pages_bloc.dart';

abstract class PagesEvent extends Equatable {
  const PagesEvent();
}

class GotoLoginPages extends PagesEvent {
  @override
  List<Object> get props => [];
}

class GotoRegisterPages extends PagesEvent {
  @override
  List<Object> get props => [];
}

class GotoMainPages extends PagesEvent {
  @override
  List<Object> get props => [];
}

class GotoDashboardPages extends PagesEvent {
  @override
  List<Object> get props => [];
}

class GotoAddPFPages extends PagesEvent {
  @override
  List<Object> get props => [];
}