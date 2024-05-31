import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';
import 'package:livintecchui/create_group_page.dart';

class KittyPartEventPage extends StatefulWidget {
  const KittyPartEventPage({super.key});

  @override
  State<KittyPartEventPage> createState() => _KittyPartEventPageState();
}

class _KittyPartEventPageState extends State<KittyPartEventPage> {
  List randomImages = [
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528'
  ];
  bool isAttendance = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.28,
                    child: ClipPath(
                      clipper:
                          BottomCurveClipper(), // Custom clipper for convex curve
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage('assets/pageview.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 170,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCard(
                        color: Colors.blue.shade400,
                        bgColor: Colors.blue.shade100,
                        title: 'Attendance\n   marked',
                        icon: const Icon(Icons.person_2),
                      ),
                      _buildCard(
                        color: Colors.yellow,
                        bgColor: Colors.yellow.shade100,
                        title: 'Contribution\n   marked',
                        icon: const Icon(Icons.money_sharp),
                      ),
                      _buildCard(
                        color: Colors.purple.shade400,
                        bgColor: AppColors.purpulish,
                        title: '    Pick\nnext host',
                        icon: const ImageIcon(
                          AssetImage(
                            'assets/crown.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15),
                    child: _buildTitleCard(),
                  )
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                    40,
                  )),
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 40,
                right: 15,
                child: Image.asset(
                  'assets/crown.png',
                  height: 30,
                  width: 30,
                )),
            Positioned(
              top: 120,
              right: 5,
              left: 5,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(3, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text(
                              'Kitty party event',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            Text(
                              'Kitty party group name',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < randomImages.length; i++)
                              Align(
                                widthFactor: 0.5,
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage:
                                      NetworkImage(randomImages[i]),
                                ),
                              ),
                            const Align(
                              widthFactor: 0.5,
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.cyanAccent,
                                child: Text(
                                  '+1',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                      ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          'Theme',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Welcome to our Enchanted Garden Gala! Dive into a world of fairy princesses, magical flowers, and Enchanted Garden Gala! Dive into a world',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Card(
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                  40,
                                )),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.location_on,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '36, Guild Street\nLondon, USA',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Card(
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                  40,
                                )),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.calendar_month,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '10 Dec 2023\nTue 4pm - 9pm',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required Widget icon,
    required String title,
    required Color color,
    required Color bgColor,
  }) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
            vertical: 3,
          ),
          child: Card(
            elevation: 5,
            color: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              height: 120,
              width: 90,
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
                color: bgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: color,
                    child: icon,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(title)
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 6,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTitleCard() {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isAttendance = true;
                });
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor:
                        isAttendance ? Colors.tealAccent : Colors.grey,
                    child: Text(
                      '30',
                      style: TextStyle(
                          fontSize: 12,
                          color: isAttendance ? Colors.black : Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Attendance ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isAttendance = false;
                });
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: isAttendance ? Colors.grey : Colors.yellow,
                    child: Text(
                      '10',
                      style: TextStyle(
                          fontSize: 12,
                          color: !isAttendance ? Colors.black : Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Contribution',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              height: 5,
              width: 260,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isAttendance = true;
                      });
                    },
                    child: Container(
                      width: 130,
                      color: isAttendance ? Colors.tealAccent : Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isAttendance = false;
                      });
                    },
                    child: Container(
                      width: 130,
                      color: !isAttendance ? Colors.yellow : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        _buildList(),
        _buildList(),
        _buildList(),
      ],
    );
  }

  _buildList() {
    return SizedBox(
      height: 65,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/female.png'),
                  ),
                  Text(
                    '  Ava Thompson',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Text(
                '11:20 am',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.grey.shade400,
          )
        ],
      ),
    );
  }
}
