import 'package:flutter/material.dart';
import 'package:livintecchui/add_member_page.dart';
import 'package:livintecchui/component/raisedbox.dart';
import 'package:livintecchui/constant.dart';
import 'package:livintecchui/group_about.dart';
import 'package:livintecchui/polls/create_polls.dart';

class GroupDescriptionPage extends StatelessWidget {
  const GroupDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            'Back',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(
              right: 15,
              top: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
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
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
            ),
            child: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 3,
        ),
        child: Column(children: [
          const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/pageview.png',
              )),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Kitty Party group name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GroupPartyAbout(),
                          ),
                        );
                      },
                      child: Container(
                        height: 55,
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
                              offset:
                                  Offset(2, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 243, 215, 245),
                              child: Icon(Icons.celebration),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Party',
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreatePolls(),
                          ),
                        );
                      },
                      child: Container(
                        height: 55,
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
                              offset:
                                  Offset(2, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: AppColors.purpulish,
                              child: Icon(Icons.gamepad_sharp),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Games',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10,
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Description',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Members (40)',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddMemberPage(),
                          ),
                        );
                      },
                      child: const RaisedBox(
                          height: 34,
                          text: '      Add member      ',
                          color: Color.fromARGB(255, 175, 134, 248)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.46,
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 65,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 22,
                                        backgroundImage:
                                            AssetImage('assets/female.png'),
                                      ),
                                      Text(
                                        '  Ava Thompson',
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          PopupMenuItem(
                                            child: Text(
                                              'Make group admin',
                                            ),
                                          ),
                                          PopupMenuItem(
                                            child: Text(
                                              'Remove Ava Thompson',
                                            ),
                                          ),
                                        ]),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade400,
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
