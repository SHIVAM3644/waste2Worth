import 'dart:developer';
// import 'package:app_matic/src/provider/api_provider.dart';
// import 'package:app_matic/src/provider/cart_provider.dart';
// import 'package:app_matic/src/views/cart/cart.dart';
// import 'package:app_matic/src/views/item_details/item_details.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  static const backgroundColor = Color(0xFF171221);
  @override
  void initState() {
    super.initState();
    // Future.microtask(
    //   () => Provider.of<Api2Provider>(context, listen: false).fetchData(),
    // );
  }

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<Api2Provider>(context);
    // final provider2 = Provider.of<CartProvider>(context);
    // print('length ${provider.items.length}');
    bool provider = false;
    bool isloading = true;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text(
          'Eco Products',
          style: TextStyle(
            color: Colors.black,
            // fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                iconSize: 35,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Cart()),
                  // );
                },
                icon: Icon(Icons.shopping_cart_outlined),
              ),
              // provider2.cart.isNotEmpty
              //     ?
              Positioned(
                right: 12,
                top: 4,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Cart()),
                    // );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    radius: 8,
                    child: Center(
                      child: Text(
                        // provider2.cart.length.toString(),
                        '',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // : SizedBox.shrink(),
            ],
          ),
        ],
      ),
      body: provider
          ? Center(child: CircularProgressIndicator(color: Colors.white))
          : GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              itemCount: 10,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.78,

                // childAspectRatio: (100 / 100),
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    log('message');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return ItemDetails(items: provider.items[index]);
                    //     },
                    //   ),
                    // );
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 8,
                      right: 8,
                      // bottom: 8,
                    ),
                    // height: 200,
                    // width: 173,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 120,
                          width: 130,
                          child: Image.network(
                            'https://share.google/images/8Sv0SiFRqTKUcw1ST',
                            // provider.items[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          'Item Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          'Item type',
                          style: TextStyle(color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              '₹5.99',

                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              overflow: TextOverflow.ellipsis,

                              '₹5.99',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                        Text('⭐ 4.8 (212)'),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
