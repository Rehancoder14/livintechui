// import 'package:flutter/material.dart';

// class MainPoll extends StatefulWidget {
//   const MainPoll({super.key});

//   @override
//   State<MainPoll> createState() => _MainPollState();
// }

// class _MainPollState extends State<MainPoll> {
//   int _currentIndex = 0;
//   final List<Widget> _screens = [
//     Container(),
//     Container(),
//     Container(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         showSelectedLabels: true,
//         showUnselectedLabels: true,
//         selectedLabelStyle: const TextStyle(color: Colors.black),
//         unselectedLabelStyle: const TextStyle(color: Colors.grey),
//         type: BottomNavigationBarType.fixed, // Ensures icons don't move
//         elevation: 20,
//         items: [
//           BottomNavigationBarItem(
//             icon: _buildIcon(Icons.add_box, 0),
//             label: 'Post',
//           ),
//           BottomNavigationBarItem(
//             icon: _buildIcon(Icons.poll, 1),
//             label: 'Poll',
//           ),
//           BottomNavigationBarItem(
//             icon: _buildIcon(Icons.announcement, 2),
//             label: 'Anouncement',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildIcon(IconData iconData, int index) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: _currentIndex == index ? Colors.grey[500] : Colors.black12,
//         // borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Icon(
//         iconData,
//         size: 30,
//         color: _currentIndex == index ? Colors.black : Colors.grey,
//       ),
//     );
//   }

//   Widget _buildCard(
//       {required IconData icon, required String title, required Color color}) {
//     return Card(
//       elevation: 5,
//       color: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Container(
//         height: 120,
//         width: 70,
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.black),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black,
//               spreadRadius: 1,
//               blurRadius: 1,
//               offset: const Offset(2, 3), // changes position of shadow
//             ),
//           ],
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 22,
//               backgroundColor: color,
//               child: Icon(icon),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(title)
//           ],
//         ),
//       ),
//     );
//   }
// }
