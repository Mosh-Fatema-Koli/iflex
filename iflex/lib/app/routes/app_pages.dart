import 'package:get/get.dart';

import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/favourite_contact_all/favourite_Contact/bindings/favourite_contact_binding.dart';
import '../modules/favourite_contact_all/favourite_Contact/views/favourite_contact_view.dart';
import '../modules/favourite_contact_all/favourite_contact_Add/bindings/favourite_contact_add_binding.dart';
import '../modules/favourite_contact_all/favourite_contact_Add/views/favourite_contact_add_view.dart';
import '../modules/favourite_contact_all/favourite_contact_Update/bindings/favourite_contact_update_binding.dart';
import '../modules/favourite_contact_all/favourite_contact_Update/views/favourite_contact_update_view.dart';
import '../modules/first_page/bindings/first_page_binding.dart';
import '../modules/first_page/views/splash_screen.dart';
import '../modules/forget_password/bindings/forget_password_binding.dart';
import '../modules/forget_password/views/forget_password_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/more/bindings/more_binding.dart';
import '../modules/more/views/more_view.dart';
import '../modules/offer/bindings/offer_binding.dart';
import '../modules/offer/views/offer_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/profile_edit/bindings/profile_edit_binding.dart';
import '../modules/profile_edit/views/profile_edit_view.dart';
import '../modules/registration/bindings/registration_binding.dart';
import '../modules/registration/views/registration_view.dart';
import '../modules/top_up_offer/bindings/top_up_offer_binding.dart';
import '../modules/top_up_offer/views/top_up_offer_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FIRST_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.FIRST_PAGE,
      page: () => SplashScreen(),
      binding: FirstPageBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.MORE,
      page: () => MoreView(),
      binding: MoreBinding(),
    ),
    GetPage(
      name: _Paths.OFFER,
      page: () => const OfferView(),
      binding: OfferBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE_CONTACT,
      page: () => const FavouriteContactView(),
      binding: FavouriteContactBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE_CONTACT_UPDATE,
      page: () => const FavouriteContactUpdateView(favouriteContact:_Paths.FAVOURITE_CONTACT_UPDATE ),
      binding: FavouriteContactUpdateBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE_CONTACT_ADD,
      page: () => const FavouriteContactAddView(),
      binding: FavouriteContactAddBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_EDIT,
      page: () => ProfileEditView(),
      binding: ProfileEditBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.TOP_UP_OFFER,
      page: () => TopUpOfferView(),
      binding: TopUpOfferBinding(),
    ),
  ];
}
