import 'package:compra_webapp/pages/products/products.dart';
import 'package:flutter/material.dart';
import 'package:compra_webapp/pages/clients/clients.dart';
import 'package:compra_webapp/pages/categories/categories.dart';
import 'package:compra_webapp/pages/overview/overview.dart';
import 'package:compra_webapp/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(const OverviewPage());
    case categoriesPageRoute:
      return _getPageRoute(const CategoriesPage());
    case productsPageRoute:
      return _getPageRoute(const ProductsPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
