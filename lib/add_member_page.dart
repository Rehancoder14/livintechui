import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:livintecchui/component/raisedbox.dart';
import 'package:livintecchui/constant.dart';

class AddMemberPage extends StatefulWidget {
  const AddMemberPage({super.key});

  @override
  State<AddMemberPage> createState() => _AddMemberPageState();
}

class _AddMemberPageState extends State<AddMemberPage> {
  int _currentIndex = 0;
  List<bool> isSelected = [];
  bool isSelectedChip = false;
  @override
  void initState() {
    for (int i = 0; i < 6; i++) {
      isSelected.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackLight : Colors.white,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
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
              backgroundColor: const Color.fromARGB(255, 203, 177, 247)),
          child: const Text(
            'Post',
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        foregroundColor: isDark ? Colors.white : AppColors.blackLight,
        title: const Text(
          'Back',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelectedChip = false;
                      });
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        color: !isSelectedChip
                            ? const Color.fromARGB(255, 254, 232, 193)
                            : const Color.fromARGB(255, 253, 239, 216),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: isDark ? Colors.white : Colors.black,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(2, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: !isSelectedChip
                                ? Colors.orange.shade200
                                : Colors.orange.shade50,
                            child: const Icon(
                              Icons.lock,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            ' Pick Randomly     ',
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelectedChip = true;
                      });
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        color: isSelectedChip
                            ? const Color.fromARGB(255, 193, 232, 254)
                            : const Color.fromARGB(255, 224, 236, 241),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: isDark ? Colors.white : Colors.black,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(2, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: isSelectedChip
                                ? Colors.cyanAccent
                                : Colors.cyan.shade50,
                            child: const Icon(Icons.person_2),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            ' Select Manually    ',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 10,
                  shadowColor: isDark ? Colors.white : Colors.transparent,
                  color: isDark ? Colors.black54 : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      40,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                      color: isDark ? Colors.black54 : Colors.white,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Select number of host',
                          style: TextStyle(
                            color: isDark ? Colors.white : Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _currentIndex = 0;
                                  });
                                },
                                child: RaisedBox(
                                  text: '1',
                                  color: _currentIndex == 0
                                      ? const Color.fromARGB(255, 193, 232, 254)
                                      : Colors.white,
                                  height: 45,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _currentIndex = 1;
                                  });
                                },
                                child: RaisedBox(
                                  text: '2',
                                  color: _currentIndex == 1
                                      ? const Color.fromARGB(255, 193, 232, 254)
                                      : Colors.white,
                                  height: 45,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _currentIndex = 2;
                                  });
                                },
                                child: RaisedBox(
                                  text: '3',
                                  color: _currentIndex == 2
                                      ? const Color.fromARGB(255, 193, 232, 254)
                                      : Colors.white,
                                  height: 45,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: isSelectedChip
                    ? Card(
                        elevation: 10,
                        shadowColor: isDark ? Colors.white : Colors.transparent,
                        color: isDark ? Colors.black54 : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            40,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 15),
                          decoration: BoxDecoration(
                            color: isDark ? Colors.black54 : Colors.white,
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text(
                                'Select host',
                                style: TextStyle(
                                  color: isDark ? Colors.white : Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              if (!isSelectedChip) ...[
                                const Text(
                                  'Total members: 9',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: isDark ? Colors.white : Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                              ],
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade400,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3, // Number of columns
                                        crossAxisSpacing:
                                            8, // Spacing between columns
                                        mainAxisSpacing:
                                            10, // Spacing between ro
                                        childAspectRatio: 0.9),
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        isSelected[index] = !isSelected[index];
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 15,
                                                width: 15,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: isSelected[index]
                                                      ? null
                                                      : Border.all(
                                                          color: isDark
                                                              ? Colors.white
                                                              : Colors.black,
                                                        ),
                                                ),
                                                child: isSelected[index]
                                                    ? Image.asset(
                                                        'assets/crown.png')
                                                    : Container(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const GridItem(
                                          name: 'Emily Williams',
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    : Card(
                        elevation: 10,
                        shadowColor: isDark ? Colors.white : Colors.transparent,
                        color: isDark ? Colors.black87 : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            40,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 15),
                          decoration: BoxDecoration(
                            color: isDark ? Colors.black87 : Colors.white,
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text(
                                'Eligible members',
                                style: TextStyle(
                                  color: isDark ? Colors.white : Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Text(
                                'Total members: 9',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isDark ? Colors.white : Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade400,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, // Number of columns
                                  crossAxisSpacing:
                                      8, // Spacing between columns
                                  mainAxisSpacing: 8, // Spacing between rows
                                ),
                                itemCount: 9,
                                itemBuilder: (context, index) {
                                  return const GridItem(
                                    name: 'Emily Williams',
                                  );
                                },
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
    );
  }
}

class GridItem extends StatelessWidget {
  final String name;

  const GridItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage:
              AssetImage('assets/female.png'), // Replace with your image
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isDark ? Colors.white : Colors.black54),
        ),
      ],
    );
  }
}
