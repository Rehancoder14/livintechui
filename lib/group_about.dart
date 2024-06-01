import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';

class GroupPartyAbout extends StatelessWidget {
  const GroupPartyAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.grey.shade900 : Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 191, 154, 255),
        title: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            CircleAvatar(
              backgroundColor: Colors.pink,
              backgroundImage: AssetImage(
                'assets/pageview.png',
              ),
            ),
            Text(
              '   Kitty Party',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        color: isDark ? Color.fromARGB(44, 39, 38, 38) : Colors.white,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Card(
              color: isDark ? Colors.black : Colors.white,
              elevation: 10,
              child: ExpansionTile(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.white,
                leading: const Icon(Icons.person_3,
                    color: isDark ? Colors.white : Colors.black),
                title: const Text(
                  'View Previous Host',
                  style: TextStyle(
                      color: isDark ? Colors.white : Colors.black,
                      fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: isDark ? Colors.black : Colors.white,
              elevation: 10,
              child: ExpansionTile(
                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: isDark ? Colors.white : Colors.black,
                ),
                enabled: false,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: isDark ? Colors.black : Colors.white,
                leading: const Icon(
                  Icons.games,
                  color: isDark ? Colors.white : Colors.black,
                ),
                title: const Text(
                  'Games',
                  style: TextStyle(
                      color: isDark ? Colors.white : Colors.black,
                      fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
