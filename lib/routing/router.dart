import 'package:compra_webapp/pages/add-categories/add_categories_page.dart';
import 'package:compra_webapp/pages/add-products/add_products_page.dart';
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
    case addproductsPageRoute:
      return _getPageRoute(const AddProductsPage());
    case addcategoriesPageRoute:
      return _getPageRoute(const AddCategoriesPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
