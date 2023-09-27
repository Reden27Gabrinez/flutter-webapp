import 'package:flutter/material.dart';
import 'package:compra_webapp/constants/controllers.dart';
import 'package:compra_webapp/helpers/reponsiveness.dart';
import 'package:compra_webapp/pages/clients/widgets/clients_table.dart';
import 'package:compra_webapp/widgets/custom_text.dart';
import 'package:get/get.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
         return Column(
         children: [
          Obx(() => Row(
             children: [
               Container(
                 margin: EdgeInsets.only(top:
                 ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                 child: CustomText(text: menuController.activeItem.value, size: 24, weight: FontWeight.bold,)),
             ],
           ),),

           Expanded(child: ListView(
             children: const [
               Clientstable(),
             ],
           )),

           ],
         );
  }
}