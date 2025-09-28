// import 'dart:developer';
// // import 'package:app_matic/src/provider/api_provider.dart';
// // import 'package:app_matic/src/provider/cart_provider.dart';
// // import 'package:app_matic/src/views/cart/cart.dart';
// // import 'package:app_matic/src/views/item_details/item_details.dart';
// import 'package:flutter/material.dart';
// import 'package:waste2worth/common/core_design_system.dart';
// import 'package:waste2worth/common_componets/common_decoration.dart';
// import 'package:waste2worth/common_componets/core_cashed_image.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:provider/provider.dart';

// class ItemPage extends StatefulWidget {
//   const ItemPage({super.key});

//   @override
//   State<ItemPage> createState() => _ItemPageState();
// }

// class _ItemPageState extends State<ItemPage> {
//   static const backgroundColor = Color(0xFF171221);
//   @override
//   void initState() {
//     super.initState();
//     // Future.microtask(
//     //   () => Provider.of<Api2Provider>(context, listen: false).fetchData(),
//     // );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final provider = Provider.of<Api2Provider>(context);
//     // final provider2 = Provider.of<CartProvider>(context);
//     // print('length ${provider.items.length}');
//     CoreDesignSystem ds = CoreDesignSystem.instance;
//     bool provider = false;
//     bool isloading = true;
//     return Scaffold(
//       backgroundColor: CoreDesignSystem.instance.background,
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Colors.blue,
//         title: Text(
//           'Eco Products',
//           style: TextStyle(
//             color: Colors.black,
//             // fontSize: 12,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           Stack(
//             children: [
//               IconButton(
//                 iconSize: 35,
//                 onPressed: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(builder: (context) => Cart()),
//                   // );
//                 },
//                 icon: Icon(Icons.shopping_cart_outlined),
//               ),
//               // provider2.cart.isNotEmpty
//               //     ?
//               Positioned(
//                 right: 12,
//                 top: 4,
//                 child: GestureDetector(
//                   onTap: () {
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(builder: (context) => Cart()),
//                     // );
//                   },
//                   child: CircleAvatar(
//                     backgroundColor: Colors.red,
//                     foregroundColor: Colors.white,
//                     radius: 8,
//                     child: Center(
//                       child: Text(
//                         // provider2.cart.length.toString(),
//                         '',
//                         style: TextStyle(
//                           fontSize: 11,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               // : SizedBox.shrink(),
//             ],
//           ),
//         ],
//       ),
//       body: provider
//           ? Center(child: CircularProgressIndicator(color: Colors.white))
//           : GridView.builder(
//               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
//               itemCount: 10,

//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 15,
//                 mainAxisSpacing: 15,
//                 childAspectRatio: 0.78,

//                 // childAspectRatio: (100 / 100),
//               ),
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     log('message');
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) {
//                     //       return ItemDetails(items: provider.items[index]);
//                     //     },
//                     //   ),
//                     // );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.only(
//                       top: 10,
//                       left: 8,
//                       right: 8,
//                       // bottom: 8,
//                     ),
//                     // height: 200,
//                     // width: 173,
//                     decoration: BoxDecoration(
//                       color: CoreDesignSystem.instance.surface,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       // mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // SizedBox(
//                         //   height: 120,
//                         //   width: 130,
//                         //   child: Image.network(
//                         //     'https://share.google/images/8Sv0SiFRqTKUcw1ST',
//                         //     // provider.items[index].image,
//                         //     fit: BoxFit.cover,
//                         //   ),
//                         // ),
//                         Center(
//                           child: CoreCachedImageContainer(
//                             fit: BoxFit.fill,
//                             height: 120,
//                             width: double.infinity,
//                             decoration:
//                                 CoreBoxDecoration.getSmoothBoxDecoration(
//                                   borderRadius: 11,
//                                 ),
//                             url: 'https://picsum.photos/seed/picsum/200/300',
//                             placeHolder: Text('Image '),
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           overflow: TextOverflow.ellipsis,
//                           'Item Name',
//                           style: TextStyle(
//                             color: ds.text1,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         Text(
//                           overflow: TextOverflow.ellipsis,
//                           'Item type',
//                           style: TextStyle(color: ds.text2),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               overflow: TextOverflow.ellipsis,
//                               '₹5.99',

//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: ds.text1,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               overflow: TextOverflow.ellipsis,

//                               '₹5.99',
//                               style: TextStyle(color: ds.text3),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star_rate_rounded,
//                               color: ds.success,
//                               size: 19,
//                             ),
//                             SizedBox(width: 4),
//                             Text(
//                               '4.8 (212)',
//                               style: Theme.of(context).textTheme.labelMedium
//                                   ?.copyWith(color: ds.text3),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:waste2worth/common/core_design_system.dart';
import 'package:waste2worth/common_componets/app_bar.dart';
import 'package:waste2worth/common_componets/common_decoration.dart';
import 'package:waste2worth/common_componets/core_cashed_image.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  static const backgroundColor = Color(0xFF171221);

  @override
  Widget build(BuildContext context) {
    CoreDesignSystem ds = CoreDesignSystem.instance;
    bool provider = false;

    return Scaffold(
      backgroundColor: CoreDesignSystem.instance.background,

      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   pinned: true,
          //   backgroundColor: Colors.blue,
          //   iconTheme: const IconThemeData(color: Colors.white),
          //   centerTitle: true,
          //   title: const Text(
          //     'Eco Products',
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          //   actions: [
          //     Stack(
          //       children: [
          //         IconButton(
          //           iconSize: 35,
          //           onPressed: () {},
          //           icon: const Icon(Icons.shopping_cart_outlined),
          //         ),
          //         Positioned(
          //           right: 12,
          //           top: 4,
          //           child: CircleAvatar(
          //             backgroundColor: Colors.red,
          //             foregroundColor: Colors.white,
          //             radius: 8,
          //             child: Center(
          //               child: Text(
          //                 '', // cart count
          //                 style: const TextStyle(
          //                   fontSize: 11,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          CoreBlurSliverAppBar(
            // expandedHeight: 1,
            title: 'Eco Products',
            backgroundColor: ds.appBarColor,
          ),

          /// Loader or Grid
          if (provider)
            const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(color: Colors.white),
              ),
            )
          else
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return GestureDetector(
                    onTap: () {
                      log('Tapped on item $index');
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 8,
                        right: 8,
                      ),
                      decoration: BoxDecoration(
                        color: CoreDesignSystem.instance.surface,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: CoreCachedImageContainer(
                              fit: BoxFit.fill,
                              height: 120,
                              width: double.infinity,
                              decoration:
                                  CoreBoxDecoration.getSmoothBoxDecoration(
                                    borderRadius: 11,
                                  ),
                              url: 'https://picsum.photos/seed/picsum/200/300',
                              placeHolder: const Text('Image '),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Item Name',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ds.text1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Item type',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: ds.text2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹5.99',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: ds.text1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '₹5.99',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: ds.text3),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: ds.success,
                                size: 19,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '4.8 (212)',
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(color: ds.text3),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }, childCount: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.78,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
