// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:livintecchui/component/raisedbox.dart';
import 'package:livintecchui/group_about.dart';
import 'package:livintecchui/reward_page.dart';

class PartyListPage extends StatelessWidget {
  const PartyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isAttendance = true;
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
            margin: const EdgeInsets.only(
              right: 15,
              top: 10,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GroupPartyAbout()));
              },
              child: const RaisedBox(
                  height: 34,
                  text: '    Create Party    ',
                  color: Color.fromARGB(255, 175, 134, 248)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Upcoming',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Text(
                          '   Recent',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
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
                    width: 180,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 90,
                            color:
                                isAttendance ? Colors.tealAccent : Colors.grey,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 90,
                            color: !isAttendance ? Colors.yellow : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RewardPage()));
                        },
                        child: _listCard());
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget _listCard() {
    return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 3,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          child: ListTile(
            leading: Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(3, 4), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(
                  10,
                ),
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/pageview.png',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            title: const Text(
              'Party Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            subtitle: const Text(
              'Kitty party group name',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            trailing: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '18 May 2024',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
//  onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const AddMemberPage(),
//                           ),
//                         );
//                       },