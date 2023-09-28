import 'package:compra_webapp/pages/add-products/widgets/add_products.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:compra_webapp/constants/style.dart';
import 'package:compra_webapp/widgets/custom_text.dart';
import 'package:get/get.dart';

/// Example without datasource
class ProductsTable extends StatelessWidget {
  const ProductsTable({super.key});

  @override
  Widget build(BuildContext context) {
    
    void _snowSnack() => ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Button Tapped"),
        duration: Duration(milliseconds: 500),
      ),
    );


    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [BoxShadow(offset: const Offset(0, 6), color: lightGrey.withOpacity(.1), blurRadius: 12)],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      // margin: const EdgeInsets.only(bottom:10),
      child: SizedBox(
        height: (60 * 7) + 40,
        child: DataTable2(
            columnSpacing: 12,
            dataRowHeight: 60,
            headingRowHeight: 40,
            horizontalMargin: 12,
            minWidth: 600,
            columns: const [
              DataColumn2(
                label: Text("Name"),
                size: ColumnSize.L,
              ),
              DataColumn(
                label: Text('Location'),
              ),
              DataColumn(
                label: Text('Rating'),
              ),
              DataColumn(
                label: Text('Action'),
              ),
            ],
            rows: List<DataRow>.generate(
                30,
                (index) => DataRow(cells: [
                      const DataCell(CustomText(text: "Product Name")),
                      const DataCell(CustomText(text: "Product addrsss")),
                      const DataCell(Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "4.5",
                          )
                        ],
                      )),
                      DataCell(Container(
                          // decoration: BoxDecoration(
                          //   color: light,
                          //   borderRadius: BorderRadius.circular(20),
                          //   border: Border.all(color: active, width: .5),
                          // ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          child: ElevatedButton(
                            onPressed: (){
                              
                            }, 
                            child: const Text("Active"),
                          ),
                          // child: CustomText(
                          //   text: "Active",
                          //   color: active.withOpacity(.7),
                          //   weight: FontWeight.bold,
                          // )
                          )),
                    ]))),
      ),
    );
  }
}
