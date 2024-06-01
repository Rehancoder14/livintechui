import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';

class CreateGroupPage extends StatelessWidget {
  const CreateGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
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
                backgroundColor: const Color.fromARGB(255, 203, 177, 247)),
            child: const Text(
              'Create',
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          color: isDark ? AppColors.blackLight : Colors.white,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.36,
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
                        vertical: 15.0,
                        horizontal: 15,
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                focusColor: AppColors.purpulish,
                                labelText: 'Group name*',
                                hintText: 'Enter your name',
                                labelStyle: TextStyle(
                                    color:
                                        isDark ? Colors.white : Colors.black),
                                hintStyle: TextStyle(
                                    color:
                                        isDark ? Colors.white : Colors.black)),
                            keyboardType: TextInputType.phone,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                focusColor: AppColors.purpulish,
                                labelText: 'Add a brief description*',
                                hintText: 'Enter group description',
                                labelStyle: TextStyle(
                                    color:
                                        isDark ? Colors.white : Colors.black),
                                hintStyle: TextStyle(
                                    color:
                                        isDark ? Colors.white : Colors.black)),
                            keyboardType: TextInputType.phone,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
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
              const Positioned(
                top: 200,
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
                  top: 295,
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

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double curveHeight = 40.0; // Adjust the curve height as desired
    final Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
        size.width / 2,
        size.height + curveHeight,
        size.width,
        size.height - curveHeight,
      )
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
