// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keus_automation_task/presentation/utils/constants.dart';

import '../../../../domain/entity/product/product_detail_entitty.dart';
import '../../product/bloc/product_bloc.dart';
import '../../product/product_detail_content.dart';

class ItemCard extends StatelessWidget {
  final ProductDetailEntity data;

  const ItemCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ProductBloc>().add(InitailQuantity());

        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            enableDrag: true,
            showDragHandle: true,
            context: context,
            builder: (context) => ProductDetailContent(productDetails: data));
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 60,
            child: Image.asset(
              data.image,
              // fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: ListTile(
              title: Text(
                data.title.toString(),
                style: const TextStyle(
                    color: AppColors.textPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(16)),
                        child: Text(
                          '\$${data.price.toString()}',
                          style: const TextStyle(
                              color: AppColors.textPrimaryColor,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(width: 20),
                    Text(
                      data.calories.toString(),
                      style: const TextStyle(
                          color: AppColors.textSecondaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// class ItemCard extends StatelessWidget {
//   final ProductDetailEntity data;

//   const ItemCard({
//     super.key,
//     required this.data,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         showModalBottomSheet(
//             isScrollControlled: true, // Allows the modal to take full height

//             context: context,
//             builder: (context) => ProductDetailContent(productDetails: data));
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             const CircleAvatar(radius: 32),
//             const SizedBox(width: 60),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(data.title),
//                   kSizedBox10,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                               color: AppColors.secondaryColor,
//                               borderRadius: BorderRadius.circular(16)),
//                           child: Text(
//                             data.price.toString(),
//                             style: const TextStyle(
//                                 color: AppColors.textPrimaryColor,
//                                 fontWeight: FontWeight.bold),
//                           )),
//                       const SizedBox(width: 20),
//                       Text(
//                         data.calories.toString(),
//                         style: const TextStyle(
//                             color: AppColors.textSecondaryColor,
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }