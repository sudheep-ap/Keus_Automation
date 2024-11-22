// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keus_automation_task/presentation/screens/product/bloc/product_bloc.dart';
import 'package:keus_automation_task/presentation/utils/app_methods.dart';
import 'package:keus_automation_task/presentation/utils/constants.dart';

import '../../../domain/entity/product/product_detail_entitty.dart';
import '../../utils/common_widgets.dart';
import 'widgets/nutritional_info.dart';

class ProductDetailContent extends StatelessWidget {
  final ProductDetailEntity productDetails;
  const ProductDetailContent({super.key, required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.of(context).size.height / 1.1,
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kSizedBox30,
            Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(productDetails.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            kSizedBox100,
            Text(
              productDetails.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            kSizedBox20,
            Text(
              'Famous Hawaiian dish. Rice pillow with tender chicken breast, mushrooms, lettuce, cherry tomatoes, seaweed and corn, with unagi sauce.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            kSizedBox40,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 0.5, color: AppColors.secondaryColor),
                  borderRadius: BorderRadius.circular(12)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NutritionalInfo(label: '325', subtitle: 'kcal'),
                  NutritionalInfo(label: '420', subtitle: 'grams'),
                  NutritionalInfo(label: '21', subtitle: 'proteins'),
                  NutritionalInfo(label: '19', subtitle: 'fats'),
                  NutritionalInfo(label: '65', subtitle: 'carbs'),
                ],
              ),
            ),
            kSizedBox50,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add in poke',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.black, size: 20),
              ],
            ),
            kSizedBox30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 0,
                  color: AppColors.secondaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.read<ProductBloc>().add(RemoveQuantity());
                          },
                          icon: const Icon(Icons.remove),
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SizedBox(
                            child: BlocBuilder<ProductBloc, ProductState>(
                              builder: (context, state) {
                                return Text(
                                  state.itemQuantity.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                );
                              },
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            context.read<ProductBloc>().add(AddQuantity());
                          },
                          icon: const Icon(Icons.add),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () async {
                        Navigator.pop(context);

                        AppMethods.showSnackBar(
                            context,
                            state.itemQuantity *
                                double.parse(productDetails.price),
                            true);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              'Add to cart',
                              style: TextStyle(color: AppColors.textOnDark),
                            ),
                            const SizedBox(width: 8),
                            BlocBuilder<ProductBloc, ProductState>(
                              builder: (context, state) {
                                final price = state.itemQuantity *
                                    double.parse(productDetails.price);

                                return Text(
                                  '\$${price.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                      color: AppColors.textOnDark),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
