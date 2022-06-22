import 'package:ecommerce/common/widgets/bottom_bar.dart';
import 'package:ecommerce/features/address/screens/address_screen.dart';
import 'package:ecommerce/features/admin/screens/add_product_screen.dart';
import 'package:ecommerce/features/auth/screens/auth_screen.dart';
import 'package:ecommerce/features/home/screens/category_deals_screen.dart';
import 'package:ecommerce/features/home/screens/home_screen.dart';
import 'package:ecommerce/features/product_details/screens/product_details_screen.dart';
import 'package:ecommerce/features/search/screens/search_screen.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        builder: (context) => const BottomBar(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const AddProductScreen(),
      );
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
    case ProductDetailsScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => ProductDetailsScreen(
          product: product,
        ),
      );
    case AddressScreen.routeName:
      var totalAmount = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AddressScreen(
          totalAmount: totalAmount,
        ),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
