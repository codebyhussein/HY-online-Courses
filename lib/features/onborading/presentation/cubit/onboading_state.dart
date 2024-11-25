part of 'onboading_cubit.dart';

abstract class OnboadingState extends Equatable {
  const OnboadingState();

  @override
  List<Object> get props => [];
}

class OnboadingInitial extends OnboadingState {}

class OnboardingNextPage extends OnboadingState {}

class OnboardingLastPage extends OnboadingState {}

class OnboardingPreviousPage extends OnboadingState {}

class IsselectedButton extends OnboadingState {
  final bool isSelected;

  const IsselectedButton({required this.isSelected});
}
