import 'package:aqsa_noor_project/models/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/1.png', title: 'First Slide'),
    OnBoardingModel(image: 'assets/images/1.png', title: 'Second Slide'),
    OnBoardingModel(image: 'assets/images/1.png', title: 'Third Slide'),
  ];

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: onBoardingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.asset(onBoardingList[i].image.toString()),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        onBoardingList[i].title.toString(),
                        style: const TextStyle(fontSize: 30),
                      )
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: const ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
