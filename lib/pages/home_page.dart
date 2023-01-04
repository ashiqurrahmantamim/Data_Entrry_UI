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
      
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:             SafeArea(
                minimum: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(
                    color: HEADER_COLOR,
                  ),
        
                     columnWidths: const <int, TableColumnWidth>{
                  0: IntrinsicColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(64),
                      },
                  children: [
          //first row
                    TableRow(
        
                      children: [
                  //Dues data column
                        TableCell(
                          child: Container(
                          height: 80,
                          width: 343,
                          child: Column(
        
                            children: [
                        //Dues data cell
                              Container(
                                height: 32,
                                width: 343,
                                color: HEADER_COLOR,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:20,top: 10),
                                  child: Text(
                                    "Dues",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                    ),
                                ),
                              ),
                              SizedBox(height: 15,),
        
                             Padding(
                               padding: const EdgeInsets.only(left:20.0),
                               child: Row(
                                children: [
                                  Text(
                                    "Previous Data",
        
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  ),
                                  SizedBox(width: 8,),
                                  Text("01 January 2022",
                                  style: TextStyle(
                                    // fontSize: 12,
        
                                  ),
                                  ),
                                ],
                               ),
                             ),
                            ],
                          ),
                          ),
                          ),
                        
                  //Due cell
                        TableCell(
                          child: Container(
                            height: 78,
                            width: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Due",
                                 style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                 ),
                                ),
                                SizedBox(height: 5,),
                                Text("৳20000",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            ),
                            ),
                      ],
                    ),
                 
        //second row
                      TableRow(
                        
                        children: [
                    //purchase cell
                          TableCell(
                            child: Container(
                              height: 490,
                              width: 263,
                    
                              child: Table(
                                children:[
                        //purchase
                                  TableRow(
                                    children: [
                                  
                                      TableCell(
                                        child:Container(
                                          height: 32,
                                          width:263,
                                          color: HEADER_COLOR,
                                          child:Padding(
                                            padding: const EdgeInsets.only(left:20.0,top: 8),
                                            child: Text(
                                    "Purchase",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                    ),
                                          ),
                                          ),
                                          ),
                                 
                                ]
                                ),
                        //Invoice
                               TableRow(
                                    children: [
                                  
                                      TableCell(
                                        child:Container(
                                          height: 67,
                                          width:263,
                                          // color: HEADER_COLOR,
                                          child:Column(
                                            children: [
                                              Text("Invoice Date: 01 January 2022"),
                                              SizedBox(height: 8,),
                                              Text("Invoice No.:5386328")
                                            ],
                                          ),
                                          ),
                                          ),
                                 
                                ])
                                ],
                                
                              ),
                            ),
                            ),
                      //second Due cell
                         TableCell(
                            child: Container(
                              height: 490,
                              width: 80,
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Due",
                                 style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                 ),
                                ),
                                SizedBox(height: 5,),
                                Text("৳30000",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            ),
                            ),
                        ],
                      ),
                  ],
        
                ),
              ),
        ),
      ),
    );
  }
}