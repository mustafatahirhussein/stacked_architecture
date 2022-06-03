import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/app/app.locator.dart';
import 'package:stacked_architecture/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  late String _myText = "Stacked introduction";

  String get declaration => _myText;

  final _navigatorKey = locator<NavigationService>();

  update() {
    _myText = "This text is now updated!!!";
    notifyListeners();
  }

  navigateToProfileView() {
    _navigatorKey.navigateTo(Routes.profileView);
  }
}
