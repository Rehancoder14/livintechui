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
    return Scaffold(
      backgroundColor:
          isDark ? const Color.fromARGB(255, 27, 26, 26) : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackColor : Colors.white,
        foregroundColor: isDark ? Colors.white : Colors.black,
        leading: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: CircleAvatar(
            backgroundColor: Colors.pink,
            backgroundImage: AssetImage(
              'assets/female.png',
            ),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(top: 15),
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
              color: isDark ? Colors.black : Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: isDark ? Colors.white : Colors.black,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
              border: Border.all(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/coin.png',
                ),
                const Text(
                  '1200  ',
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
        title: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'Jessica',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
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
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
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
                            color: isDark ? Colors.white : Colors.black,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            borderRadius: BorderRadius.circular(
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
                                            borderRadius: BorderRadius.circular(
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
                                            borderRadius: BorderRadius.circular(
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
            height: 25,
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
              color: isDark ? Colors.white : Colors.black,
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(2, 3), // changes position of shadow
            ),
          ],
          color: isDark ? AppColors.blackLight : Colors.white,
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
            Text(
              title,
              style:
                  const TextStyle(color: isDark ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: _currentPage == index ? 30 : 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: _currentPage == index
                  ? isDark
                      ? Colors.white
                      : Colors.black
                  : Colors.grey,
            ),
          ),
        );
      }),
    );
  }
}
