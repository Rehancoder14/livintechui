import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text('J'),
            ),
          ),
          actions: [
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: const Icon(Icons.notification_important_outlined),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              margin: const EdgeInsets.only(right: 10, left: 8, top: 8),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/coin.png',
                  ),
                  const Text('1200  ')
                ],
              ),
            ),
          ],
          title: const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text('Jessica'),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 420,
              child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black),
                          color: AppColors.purpulish,
                          boxShadow: const [
                            // BoxShadow(
                            //   color: Colors.black,
                            //   spreadRadius: 1,
                            //   blurRadius: 1,
                            //   offset: const Offset(0, 10), // changes position of shadow
                            // ),
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(
                                  3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              margin: const EdgeInsets.only(
                                  left: 5, right: 5, top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/pageview.png",
                                  ),
                                  fit: BoxFit.fitWidth,
                                ),
                                color: AppColors.purpulish.withOpacity(0.8),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Kitty Party Group Name',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Party title name',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'A short description of event',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                        color: Colors.white),
                                    height: 50,
                                    width: 50,
                                    child: const Icon(
                                      Icons.timer_outlined,
                                      size: 40,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                    height: 60,
                                    child: Row(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                color: Colors.white),
                                            height: 60,
                                            width: 50,
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '6',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  'day',
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            )),
                                        const Text(
                                          ':',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                              color: Colors.white),
                                          height: 60,
                                          width: 50,
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '12',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'hours',
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          ':',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                              color: Colors.white),
                                          height: 60,
                                          width: 50,
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '17',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'min',
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          ':',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                              color: Colors.white),
                                          height: 60,
                                          width: 50,
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '20',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'sec',
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  );
                },
              ),
            ),
            _buildDots(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCard(
                  color: Colors.pink.shade200,
                  title: 'Create\ngroup',
                  icon: Icons.group_add,
                ),
                _buildCard(
                  color: AppColors.purpulish,
                  title: 'Join\ngroup',
                  icon: Icons.group_add,
                ),
                _buildCard(
                  color: Colors.cyanAccent,
                  title: 'Refer\ngroup',
                  icon: Icons.group_add,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
      {required IconData icon, required String title, required Color color}) {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 120,
        width: 70,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          boxShadow: const [
            // BoxShadow(
            //   color: Colors.black,
            //   spreadRadius: 1,
            //   blurRadius: 1,
            //   offset: const Offset(0, 10), // changes position of shadow
            // ),
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(2, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: color,
              child: Icon(icon),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }

  Widget _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == index
                  ? const Color.fromARGB(255, 159, 109, 246)
                  : Colors.grey,
            ),
          ),
        );
      }),
    );
  }
}
