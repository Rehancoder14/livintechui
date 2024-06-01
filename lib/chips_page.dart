import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';
import 'package:livintecchui/invitation_page.dart';

class ChipsPage extends StatefulWidget {
  const ChipsPage({super.key});

  @override
  State<ChipsPage> createState() => _ChipsPageState();
}

class _ChipsPageState extends State<ChipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackColor : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackColor : Colors.white,
        foregroundColor: isDark ? Colors.white : Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Back',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [],
      ),
      body: Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 25.0,
                        top: 30,
                        bottom: 20,
                      ),
                      child: Text(
                        'Interests',
                        style: TextStyle(
                          fontSize: 22,
                          color: isDark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Card(
                  color: isDark ? AppColors.blackColor : Colors.white,
                  elevation: isDark ? 5 : 0.5,
                  shadowColor: Colors.black26,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        30,
                      ),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: isDark ? AppColors.blackColor : Colors.white,
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.78,
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                    ),
                    margin: const EdgeInsets.only(left: 30, top: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            cursorColor: Colors.blue,
                            showCursor: true,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(
                                top: 10,
                                left: 20,
                              ),
                              hintText: 'Search',
                              prefixIcon: Icon(
                                Icons.search,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Suggested interest based on your profile",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: isDark ? Colors.white : Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            spacing: 8.0,
                            children: List.generate(choiceChip.length, (index) {
                              return ChoiceChip(
                                avatar: choiceChip[index]["isSelected"]
                                    ? Container()
                                    : Image.asset(
                                        choiceChip[index]['icon'],
                                      ),
                                checkmarkColor: Colors.white,
                                selectedColor: Colors.pink.shade300,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.black,
                                    )),
                                label: Text(
                                  '    ${choiceChip[index]["name"]}    ',
                                  style: TextStyle(
                                    color: choiceChip[index]["isSelected"]
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                selected: choiceChip[index]["isSelected"],
                                onSelected: (selected) {
                                  setState(() {
                                    choiceChip[index]["isSelected"] = selected;
                                  });
                                },
                              );
                            }),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      backgroundColor: Colors.pink.shade400,
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const InvitationPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'Done',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
