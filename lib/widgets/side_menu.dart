import 'package:flutter/material.dart';
import 'package:compra_webapp/constants/controllers.dart';
import 'package:compra_webapp/constants/style.dart';
import 'package:compra_webapp/helpers/reponsiveness.dart';
import 'package:compra_webapp/routing/routes.dart';
import 'package:compra_webapp/widgets/custom_text.dart';
import 'package:compra_webapp/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
            color: light,
            child: ListView(
              children: [
                if(ResponsiveWidget.isSmallScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(width: width / 48),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Image.asset("assets/icons/logofinal-removebg-preview.png"),
                        ),
                        const Flexible(
                          child: CustomText(
                            text: "Compra HGT",
                            size: 20,
                            weight: FontWeight.bold,
                            color: active,
                          ),
                        ),
                        SizedBox(width: width / 48),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                    Divider(color: lightGrey.withOpacity(.1), ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: sideMenuItemRoutes
                      .map((item) => SideMenuItem(
                          itemName: item.name,
                          onTap: () {
                            if(item.route == authenticationPageRoute){
                              Get.offAllNamed(authenticationPageRoute);
                              menuController.changeActiveItemTo(overviewPageDisplayName);

                            }
                            if (!menuController.isActive(item.name)) {
                              menuController.changeActiveItemTo(item.name);
                              if(ResponsiveWidget.isSmallScreen(context)) {
                                Get.back();
                              }
                              navigationController.navigateTo(item.route);
                            }
                          }))
                      .toList(),
                )
              ],
            ),
          );
  }
}