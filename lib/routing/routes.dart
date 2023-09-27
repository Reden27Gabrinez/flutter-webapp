const rootRoute = "/";

const overviewPageDisplayName = "Overview";
const overviewPageRoute = "/overview";

const categoriesPageDisplayName = "Categories";
const categoriesPageRoute = "/categories";

const productsPageDisplayName = "Products";
const productsPageRoute = "/products";

const clientsPageDisplayName = "Customers";
const clientsPageRoute = "/clients";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}



List<MenuItem> sideMenuItemRoutes = [
 MenuItem(overviewPageDisplayName, overviewPageRoute),
 MenuItem(categoriesPageDisplayName, categoriesPageRoute),
 MenuItem(productsPageDisplayName, productsPageRoute),
 MenuItem(clientsPageDisplayName, clientsPageRoute),
 MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
