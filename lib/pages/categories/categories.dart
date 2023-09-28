import 'package:compra_webapp/pages/add-categories/widgets/add_categories.dart';
import 'package:flutter/material.dart';
import 'package:compra_webapp/constants/controllers.dart';
import 'package:compra_webapp/helpers/reponsiveness.dart';
import 'package:compra_webapp/pages/categories/widgets/categories_table.dart';
import 'package:compra_webapp/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

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
        100.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Get.to(() => const CategoriesAdditionScreen());
              },
              child: const Text('Add Categories'),
            ),
          ],
        ),
        Expanded(
            child: ListView(
          children: const [CategoriesTable()],
        )),
      ],
    );
  }
}
