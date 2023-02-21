import 'package:demo/screen/login_page/login_page.dart';
import 'package:demo/screen/select_country_page/select_country_page.dart';
import 'package:demo/screen/splash_screen.dart';
import 'package:get/get.dart';


mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const splashScreen = "/SplashScreen";
  static const loginpage = "/LoginPage";
  static const selectCountryPage = "/SelectCountryPage";


  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: splashScreen,
      page: () => SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loginpage,
      page: () => LoginPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: selectCountryPage,
      page: () => SelectCountryPage(),
      transition: defaultTransition,
    ),
  ];
}
