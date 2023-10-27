import 'package:coditrontask/app/view/pages/CartPage/EmptyCart/empty_cart.dart';
import 'package:coditrontask/app/view/pages/OrderConfirmationScreen/OrderStatus/order_status_page.dart';
import 'package:coditrontask/app/view/pages/OrderConfirmationScreen/PaymentMethod/payment_method_page.dart';
import 'package:coditrontask/app/view/widgets/bottom_bar.dart';
import 'package:get/get.dart';
import '../view/pages/CartPage/cart_page.dart';
import '../view/pages/LikePage/like_page.dart';
import '../view/pages/OrderConfirmationScreen/order_confirmation_page.dart';
import '../view/pages/ProfilePage/profile_page.dart';
import '../view/pages/RetailPage/retail_page.dart';


class AppRoutes {
  static const initial = '/bottombar';

  static final routes = [
    GetPage(name: '/bottombar', page: () =>  BottomBar()),
    GetPage(name: '/retail', page: () => const RetailPage()),
    GetPage(name: '/like', page: () => const LikePage()),
    GetPage(name: '/cart', page: () => const CartPage()),
    GetPage(name: '/profile', page: () => const ProfilePage()),
    GetPage(name: '/orderConfirm', page: () => const OrderConfirmScreen()),
    GetPage(name: '/paymentmethod', page: () => const PaymentMethodScreen()),
    GetPage(name: '/orderstatus', page: () => const OrderStatusScreen()),
    GetPage(name: '/emptycart', page: () => const EmptyCartScreen()),

  ];
}
