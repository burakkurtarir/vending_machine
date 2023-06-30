import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:vending_machine/core/navigations/base_navigation_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.context, this.navigationService) : super(HomeState());

  final BuildContext context;
  final BaseNavigationService navigationService;

  void openHotBeverage() {}
}
