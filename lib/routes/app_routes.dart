import 'package:flutter/material.dart';
import 'package:ajestores/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:ajestores/presentation/login_one_screen/login_one_screen.dart';
import 'package:ajestores/presentation/login_screen/login_screen.dart';
import 'package:ajestores/presentation/login_three_screen/login_three_screen.dart';
import 'package:ajestores/presentation/login_two_screen/login_two_screen.dart';
import 'package:ajestores/presentation/home_container_screen/home_container_screen.dart';
import 'package:ajestores/presentation/cart_one_screen/cart_one_screen.dart';
import 'package:ajestores/presentation/product_screen/product_screen.dart';
import 'package:ajestores/presentation/cart_two_screen/cart_two_screen.dart';
import 'package:ajestores/presentation/checkout_screen/checkout_screen.dart';
import 'package:ajestores/presentation/cart_screen/cart_screen.dart';
import 'package:ajestores/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String loginScreen = '/login_screen';

  static const String loginThreeScreen = '/login_three_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String cartOneScreen = '/cart_one_screen';

  static const String productScreen = '/product_screen';

  static const String cartTwoScreen = '/cart_two_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String cartScreen = '/cart_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreen: OnboardingScreen.builder,
        loginOneScreen: LoginOneScreen.builder,
        loginScreen: LoginScreen.builder,
        loginThreeScreen: LoginThreeScreen.builder,
        loginTwoScreen: LoginTwoScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        cartOneScreen: CartOneScreen.builder,
        productScreen: ProductScreen.builder,
        cartTwoScreen: CartTwoScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        cartScreen: CartScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingScreen.builder
      };
}
