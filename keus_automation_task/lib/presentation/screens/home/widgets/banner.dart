import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  List<Map<String, dynamic>> bannerItems = [
    {
      "image": "assets/images/Pizza.png",
      "description": "Two slices of pizza with delicious salami",
      "price": "\$ 12.00",
    },
    {
      "image": "assets/images/Food-Plate.png",
      "description": "Salad with egg , Cheese with shrimps",
      "price": "\$ 9.25",
    },
    {
      "image": "assets/images/Dessert.png",
      "description": "Ice cream served with delicious fruits",
      "price": "\$ 12.00",
    },
    {
      "image": "assets/images/Dessert2.png",
      "description": "Donnut with peanut butter and nuts",
      "price": "\$ 9.25",
    },
  ];
  final PageController _pageController = PageController();
  ValueNotifier isBannerActiveNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          width: MediaQuery.sizeOf(context).width,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              isBannerActiveNotifier.value = index;
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: isBannerActiveNotifier.value % 2 == 0
                              ? const LinearGradient(colors: [
                                  AppColors.bannerShadeColorPrimary,
                                  AppColors.bannerShadeColorSecondary
                                ])
                              : const LinearGradient(colors: [
                                  AppColors.shadeColorPrimary,
                                  AppColors.shadeColorSecondary,
                                ]),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: Text(
                                      bannerItems[index]["description"],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Text(
                                        bannerItems[index]["price"],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //I'm aware that I can replace this with Positioned widget
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 200,
                        height: 150,
                        child: Image.asset(
                          bannerItems[index]["image"],
                          fit: BoxFit.contain,
                        ),
                      ))
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ValueListenableBuilder(
              valueListenable: isBannerActiveNotifier,
              builder: (context, isActive, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                    (index) => Expanded(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 4,
                        decoration: BoxDecoration(
                          color: isActive == index
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
