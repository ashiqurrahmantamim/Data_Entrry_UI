import 'package:data_entry_app/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Table Data"),
        centerTitle: true,
        backgroundColor: HEADER_COLOR,
      ),
      drawer: Drawer(
       
        child: ListView(
         
         // padding: EdgeInsets.zero,
          children: [
             Container(
              height: 114.76,
              width: 329,
               child: DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: HEADER_COLOR,
                  
                 ), 
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     InkWell(
                      onTap: () =>Navigator.of(context).pop(),
                       child: Align(
                        alignment: Alignment.topLeft,
                         child: Icon(
                           Icons.close,
                           color: WHITE_COLOR,
                           
                         ),
                       ),
                     ),
                     Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Demo Limited Company",
                        style: TextStyle(
                          fontSize: 18,
                          color:WHITE_COLOR,
                          
                        ),
                        ),
                      ),
                 
                   ],
                 ),
                ),
             ),
              
      //purchase item
            ExpansionTile(
              collapsedBackgroundColor: HEADER_LIGT_COLOR,
              collapsedIconColor: HEADER_COLOR,
              collapsedTextColor: HEADER_COLOR,
              childrenPadding: EdgeInsets.only(left: 60),
              leading: Icon(
                    Icons.shopping_cart,
                     size: 16,
                     
                    ),
                  title: Text(
                    'Purchase',
                    style: TextStyle(
                      
                      fontSize: 14,
                    ),
                    ),
              children: [

        //purchase list
                ListTile(
                  title: Text(
                    'Purchase List',
                    style: TextStyle(
                      color: HEADER_COLOR,
                      fontSize: 14,
                    ),
                    ),
                    
                 
                ),
          //Order list

            ListTile(
                  title: Text(
                    'Order List',
                    style: TextStyle(
                      color: HEADER_COLOR,
                      fontSize: 14,
                    ),
                    ),
                    
                 
                ),

            //Vat list
                 ListTile(
                  title: Text(
                    'VAT List',
                    style: TextStyle(
                      color: HEADER_COLOR,
                      fontSize: 14,
                    ),
                    ),
                    
                 
                ),

          //Product Unit
                  ListTile(
                      title: Text(
                        'Product Unit',
                        style: TextStyle(
                          color: HEADER_COLOR,
                          fontSize: 14,
                        ),
                        ),
                        
                    
                    ),

              //Purchase Report
                    ListTile(
                     title: Text(
                    'Purchase Report',
                    style: TextStyle(
                      color: HEADER_COLOR,
                      fontSize: 14,
                    ),
                    ),
                    
                 
                ),
              ],
            ),

      //sell
         ExpansionTile(
           leading: Icon(
                    Icons.shopping_bag,
                     size: 16,
                     
                    ),
                  title: Text(
                    'Sell',
                    style: TextStyle(
                      
                      fontSize: 14,
                    ),
                    ),
          ),

      //stock/inventory
           ExpansionTile(
           
           leading: Icon(
                    Icons.shopping_bag,
                     size: 16,
                     
                    ),
                  title: Text(
                    'Stock/Inventory',
                    style: TextStyle(
                      
                      fontSize: 14,
                    ),
                    ),
          ),

    
          ],
        ),
        
      ),
    );
  }
}