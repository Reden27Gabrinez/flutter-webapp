import 'package:compra_webapp/pages/add-products/widgets/add_products.dart';
import 'package:flutter/material.dart';
import 'package:compra_webapp/constants/controllers.dart';
import 'package:compra_webapp/helpers/reponsiveness.dart';
import 'package:compra_webapp/pages/products/widgets/products_table.dart';
import 'package:compra_webapp/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

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
                Get.to(() => const ProductAdditionScreen());
              },
              child: const Text('Add Products'),
            ),
          ],
        ),
        Expanded(
            child: ListView(
          children: const [ProductsTable()],
        )),
      ],
    );
  }
}
