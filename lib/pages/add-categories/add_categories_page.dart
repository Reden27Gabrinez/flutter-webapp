import 'package:compra_webapp/pages/add-categories/widgets/add_categories.dart';
import 'package:compra_webapp/pages/add-products/widgets/add_products.dart';
import 'package:flutter/material.dart';
import 'package:compra_webapp/constants/controllers.dart';
import 'package:compra_webapp/helpers/reponsiveness.dart';
import 'package:compra_webapp/widgets/custom_text.dart';
import 'package:get/get.dart';

class AddCategoriesPage extends StatelessWidget {
  const AddCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  )),
            ],
          ),
        ),
   
         const CategoriesAdditionScreen(),

      ],
    );
  }
}
