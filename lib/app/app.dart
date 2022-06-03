import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_architecture/home/home_view.dart';
import 'package:stacked_architecture/profile/profile_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: ProfileView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
