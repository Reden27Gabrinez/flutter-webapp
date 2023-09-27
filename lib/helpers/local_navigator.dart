import 'package:flutter/cupertino.dart';
import 'package:compra_webapp/constants/controllers.dart';
import 'package:compra_webapp/routing/router.dart';
import 'package:compra_webapp/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );
