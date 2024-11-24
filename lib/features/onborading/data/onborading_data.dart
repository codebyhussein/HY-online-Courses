import 'package:rokna/features/onborading/data/onboarding_model.dart';

class OnboradingData {
  static List<OnBoardingModel> pages = [
    OnBoardingModel(
      title: "Welcome to Learning",
      description:
          "Empower your skills with diverse courses. Join our learning community.",
      image: "assets/images/onboarding1.png", // Replace with your image path
    ),
    OnBoardingModel(
      title: "Find Your Course",
      description:
          "Explore our extensive catalog. Select courses that match your career goals.",
      image: "assets/images/onboarding2.png", // Replace with your image path
    ),
    OnBoardingModel(
      title: "Unlock Potential",
      description: "Engage with interactive lessons. Learn at your own pace.",
      image: "assets/images/onborading3.png", // Replace with your image path
    ),
    OnBoardingModel(
      title: "Start Learning",
      description:
          "Begin your first lesson today. Discover the joy of new knowledge.",
      image: "assets/images/onborading4.png", // Replace with your image path
    ),
  ];
}
