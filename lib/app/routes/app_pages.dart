import 'package:get/get.dart';

import 'package:app_ukm/app/modules/home/bindings/home_binding.dart';
import 'package:app_ukm/app/modules/home/views/home_view.dart';
import 'package:app_ukm/app/modules/login/bindings/login_binding.dart';
import 'package:app_ukm/app/modules/login/views/login_view.dart';
import 'package:app_ukm/app/modules/pageUKM/bindings/page_u_k_m_binding.dart';
import 'package:app_ukm/app/modules/pageUKM/views/page_u_k_m_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_U_K_M,
      page: () => PageUKMView(),
      binding: PageUKMBinding(),
    ),
  ];
}
