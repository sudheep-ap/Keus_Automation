import 'package:flutter/material.dart';
import 'package:keus_automation_task/presentation/utils/constants.dart';

class CategoryChips extends StatelessWidget {
  CategoryChips({super.key});

  final List<String> categories = [
    "Salads",
    "Pizza",
    "Beverages",
    "Snacks",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Chip(
          label: const Icon(Icons.filter_list),
          backgroundColor: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: AppColors.secondaryColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Expanded(
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Chip(
                    label: Text(
                      categories[index],
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    backgroundColor: AppColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: AppColors.secondaryColor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
