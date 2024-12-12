import 'package:flutter/material.dart';

class StackView extends StatefulWidget {
  const StackView({super.key});

  @override
  State<StackView> createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {
  int selectedIndex = 0;
  int selectedDotIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/dt.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 30),
            child: Container(
              height: 60,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        selectedIndex = i;
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            Text(
                              "My News",
                              style: TextStyle(
                                  color: selectedIndex == i
                                      ? Colors.blue
                                      : Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            if (selectedIndex == i)
                              Container(
                                width: 36,
                                height: 6,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/3.png',
                          height: 36,
                          width: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "News18",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "1h | US & Canada",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Trump presidency's final days: 'In his mind, he will not have lost'",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/like.png',
                          height: 24,
                          color: Colors.white,
                          width: 24,
                        ),
                        Image.asset(
                          'assets/images/bookmark.png',
                          height: 24,
                          color: Colors.white,
                          width: 24,
                        ),
                        Image.asset(
                          'assets/images/copy.png',
                          height: 24,
                          color: Colors.white,
                          width: 24,
                        ),
                        Image.asset(
                          'assets/images/send.png',
                          height: 24,
                          color: Colors.white,
                          width: 24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 15,
                      child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: InkWell(
                                  onTap: () {
                                    selectedDotIndex = i;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 10,
                                    width: selectedDotIndex == i ? 20 : 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: selectedDotIndex == i
                                            ? Colors.blue
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
