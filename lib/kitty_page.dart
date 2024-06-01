import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';
import 'package:livintecchui/create_group_page.dart';
import 'package:livintecchui/group_description.dart';

class KittyPage extends StatefulWidget {
  const KittyPage({super.key});

  @override
  State<KittyPage> createState() => _KittyPageState();
}

class _KittyPageState extends State<KittyPage> {
  bool _showCards = false;

  void _toggleCardsVisibility() {
    setState(() {
      _showCards = !_showCards;
    });
  }

  Widget _buildChipCard({required Color color}) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(color: Colors.black),
        boxShadow: const [
          BoxShadow(
            color: isDark ? Colors.white : Colors.black,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(2, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: color,
        leading: InkWell(
          onTap: () {},
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/pageview.png'),
            backgroundColor: Colors.pink,
            child: Text('R'),
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: const Text(
            'Kitty Group 3',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
        subtitle: const Text('Hi Trish! Hope you are doing....'),
        trailing: const Text('29th May'),
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return Card(
      elevation: 5,
      color: isDark ? Colors.black : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 120,
        width: 70,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: isDark ? Colors.white : Colors.black),
          boxShadow: const [
            BoxShadow(
              color: isDark ? Colors.white : Colors.black,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
          color: isDark ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: color,
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style:
                  const TextStyle(color: isDark ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackLight : Colors.white,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        elevation: 10,
        splashColor: isDark ? Colors.white : Colors.black,
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        onPressed: _toggleCardsVisibility,
        child: Icon(_showCards ? Icons.close : Icons.group_add,
            color: isDark ? Colors.white : Colors.black),
      ),
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        foregroundColor: isDark ? Colors.white : AppColors.blackLight,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: TextFormField(
              cursorColor: Colors.blue,
              showCursor: true,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(top: 10, left: 20),
                prefixIcon: Icon(
                  Icons.search,
                  color: isDark ? Colors.white : Colors.black,
                ),
                hintText: 'Search here',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                filled: true,
                labelStyle:
                    TextStyle(color: isDark ? Colors.white : Colors.black),
                hintStyle:
                    TextStyle(color: isDark ? Colors.white : Colors.black),
                fillColor: isDark ? Colors.black12 : Colors.white,
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index == 0) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const GroupDescriptionPage()));
                    },
                    child: _buildChipCard(color: Colors.yellow.shade300));
              }
              if (index == 1) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const GroupDescriptionPage()));
                    },
                    child: _buildChipCard(color: Colors.teal.shade100));
              }
              return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const GroupDescriptionPage()));
                  },
                  child: _buildChipCard(color: Colors.white));
            },
          ),
          const SizedBox(
            height: 30,
          ),
          if (_showCards)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 200,
                  child: Card(
                    color: isDark ? Colors.black : Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateGroupPage()));
                            },
                            child: _buildCard(
                              color: Colors.pink.shade200,
                              title: 'Create\ngroup',
                              icon: Icons.group_add,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _showInviteCodeBottomSheet(context);
                            },
                            child: _buildCard(
                              color: const Color.fromARGB(255, 157, 103, 251),
                              title: 'Join\ngroup',
                              icon: Icons.group_add,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  void _showInviteCodeBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: isDark ? AppColors.blackLight : Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Enter Kitty Invite Code',
                    style: TextStyle(
                      color: isDark ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'To join the kitty group, please enter the code received from the group admin.',
                style: TextStyle(
                  fontSize: 14,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter code',
                  labelStyle:
                      TextStyle(color: isDark ? Colors.white : Colors.black),
                  hintStyle:
                      TextStyle(color: isDark ? Colors.white : Colors.black),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: isDark ? Colors.white : Colors.black,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the join action
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      foregroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor:
                          const Color.fromARGB(255, 203, 177, 247)),
                  child: const Text(
                    'Join Group',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
