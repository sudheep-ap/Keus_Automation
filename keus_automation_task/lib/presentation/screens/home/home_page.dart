import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:keus_automation_task/presentation/screens/home/widgets/banner.dart';
import 'package:keus_automation_task/presentation/screens/home/widgets/category_chips.dart';

import '../../../domain/entity/product/product_detail_entitty.dart';
import '../../utils/common_widgets.dart';
import '../../utils/constants.dart';
import 'widgets/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> foodItems = [
    {
      "image": "assets/images/Food-Plate.png",
      "title": "Poke with chicken",
      "price": "47.00",
      "calories": "325 Kcal",
    },
    {
      "image": "assets/images/Dessert2.png",
      "title": "Salad with radishes, tomatoes and mushrooms",
      "price": "35.00",
      "calories": "200 Kcal",
    },
    {
      "image": "assets/images/Food-Plate.png",
      "title": "Poke with chicken",
      "price": "47.00",
      "calories": "325 Kcal",
    },
    {
      "image": "assets/images/Dessert2.png",
      "title": "Salad with radishes, tomatoes and mushrooms",
      "price": "35.00",
      "calories": "200 Kcal",
    },
    {
      "image": "assets/images/Dessert2.png",
      "title": "Poke with chicken",
      "price": "47.00",
      "calories": "325 Kcal",
    },
    {
      "image": "assets/images/Food-Plate.png",
      "title": "Salad with radishes, tomatoes and mushrooms",
      "price": "35.00",
      "calories": "200 Kcal",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kSizedBox10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.menu),
                      Container(
                          height: 35,
                          width: MediaQuery.sizeOf(context).width / 2,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              '100a Ealing road ● 24 min',
                              style: TextStyle(color: AppColors.textOnDark),
                            ),
                          )),
                      const Icon(FontAwesome.search),
                    ],
                  ),
                  kSizedBox30,
                  const Text(
                    'Hits of the week',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: AppColors.textPrimaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  kSizedBox30,
                  const HomeBanner(),
                  kSizedBox30,
                  CategoryChips(),
                  kSizedBox30,
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final productData = ProductDetailEntity(
                            title: foodItems[index]["title"],
                            price: foodItems[index]["price"],
                            image: foodItems[index]["image"],
                            calories: foodItems[index]["calories"]);
                        return ItemCard(data: productData);
                      },
                      separatorBuilder: (context, index) => kSizedBox20,
                      itemCount: foodItems.length),
                  kSizedBox30
                ],
              ),
            ),
          ),
        ));
  }
}
