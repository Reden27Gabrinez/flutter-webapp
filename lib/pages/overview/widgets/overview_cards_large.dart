import 'package:flutter/material.dart';
import 'package:compra_webapp/pages/overview/widgets/info_card.dart';


class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({super.key});


  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;

    return  Row(
              children: [
                InfoCard(
                  title: "Total Categories",
                  value: "7",
                  onTap: () {},
                  topColor: Colors.orange,
                ),
                SizedBox(
                  width: width / 64,
                ),
                InfoCard(
                  title: "Total Products",
                  value: "17",
                  topColor: Colors.lightGreen,
                  onTap: () {},
                ),
                SizedBox(
                  width: width / 64,
                ),
                InfoCard(
                  title: "Total Sales",
                  value: "20,000",
                  topColor: Colors.redAccent,
                  onTap: () {},
                ),
                SizedBox(
                  width: width / 64,
                ),
                InfoCard(
                   title: "On Delivery",
                   value: "7",
                  onTap: () {},
                ),
              ],
            );
  }
}