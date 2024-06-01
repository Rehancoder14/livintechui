import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';
import 'package:livintecchui/create_group_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        // bottomNavigationBar: Container(
        //   margin: const EdgeInsets.symmetric(
        //     horizontal: 20,
        //     vertical: 10,
        //   ),
        //   decoration: BoxDecoration(
        //     border: Border.all(color: Colors.black),
        //     borderRadius: BorderRadius.circular(20),
        //     boxShadow: const [
        //       BoxShadow(
        //         color: isDark ? Colors.white : Colors.black,
        //         spreadRadius: 1,
        //         blurRadius: 1,
        //         offset: Offset(2, 3), // changes position of shadow
        //       ),
        //     ],
        //   ),
        //   child: ElevatedButton(
        //     onPressed: () {
        //       // Handle the join action
        //     },
        //     style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(
        //             20,
        //           ),
        //         ),
        //         foregroundColor: Colors.black,
        //         minimumSize: const Size(double.infinity, 50),
        //         backgroundColor: const Color.fromARGB(255, 203, 177, 247)),
        //     child: const Text(
        //       'Create',
        //     ),
        //   ),
        // ),
        body: Container(
          height: double.infinity,
          color: isDark ? AppColors.blackLight : Colors.white,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: ClipPath(
                      clipper:
                          BottomCurveClipper(), // Custom clipper for convex curve
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage('assets/bgimg.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 15,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            'Jessica Jones',
                            style: TextStyle(
                              color: isDark ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('@jessicaJones | 7397941495',
                              style: TextStyle(
                                  color: isDark ? Colors.white : Colors.black)),
                          const SizedBox(
                            height: 5,
                          ),
                          Card(
                            elevation: 5,
                            color: isDark ? Colors.black : Colors.white,
                            shadowColor: isDark ? Colors.white : Colors.grey,
                            child: ExpansionTile(
                              leading: const Icon(Icons.dark_mode,
                                  color: isDark ? Colors.white : Colors.black),
                              trailing: Switch(
                                  value: _isOn,
                                  onChanged: (value) {
                                    setState(() {
                                      _isOn = !_isOn;
                                    });
                                  }),
                              title: Text(
                                _isOn
                                    ? 'Enable light mode'
                                    : 'Enable dark mode',
                                style: const TextStyle(
                                    color:
                                        isDark ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                          const Card(
                            elevation: 5,
                            color: isDark ? Colors.black : Colors.white,
                            shadowColor: isDark ? Colors.white : Colors.grey,
                            child: ExpansionTile(
                              leading: Icon(Icons.description,
                                  color: isDark ? Colors.white : Colors.black),
                              title: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                    color:
                                        isDark ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Card(
                            elevation: 5,
                            color: isDark ? Colors.black : Colors.white,
                            shadowColor: isDark ? Colors.white : Colors.grey,
                            child: ExpansionTile(
                              leading: Icon(Icons.description,
                                  color: isDark ? Colors.white : Colors.black),
                              title: Text(
                                'Terms and condition',
                                style: TextStyle(
                                    color:
                                        isDark ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Card(
                            elevation: 5,
                            color: isDark ? Colors.black : Colors.white,
                            shadowColor: isDark ? Colors.white : Colors.grey,
                            child: ExpansionTile(
                              leading: Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                              title: Text(
                                'Contact us',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Card(
                            elevation: 5,
                            color: isDark ? Colors.black : Colors.white,
                            shadowColor: isDark ? Colors.white : Colors.grey,
                            child: ExpansionTile(
                              leading: Icon(
                                Icons.logout,
                                color: Colors.red,
                              ),
                              title: Text(
                                'Log out',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 40,
                left: 10,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      40,
                    )),
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
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
                right: 10,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 10, left: 8, top: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(2, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/coin.png'),
                        const Text('1200  ')
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 120,
                right: 5,
                left: 5,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    'assets/pageview.png',
                  ),
                ),
              ),
              Positioned(
                  top: 210,
                  right: 120,
                  // left: 5,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        40,
                      )),
                      child: Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.edit,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
