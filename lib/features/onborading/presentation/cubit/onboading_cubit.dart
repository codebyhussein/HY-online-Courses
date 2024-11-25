import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'onboading_state.dart';

class OnboadingCubit extends Cubit<OnboadingState> {
  OnboadingCubit() : super(OnboadingInitial());

  int currentPage = 1;

  void goToNextPage({
    required PageController controller,
  }) {
    controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  goToLastPage({PageController? controller}) {
    controller!.jumpToPage(3);
    emit(OnboardingLastPage());
  }

  void toggleSelection(bool isSelected) {
    bool newSelectionState = !isSelected;
    emit(IsselectedButton(isSelected: newSelectionState));
  }
}
