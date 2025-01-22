// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   late ScrollController _scrollController;
//   late AnimationController _controller;
//   final List<String> _images = [
//     'assests/images/2.jpg',
//     'assests/images/1.jpg',
//     'assests/images/3.jpg',
//     'assests/images/4.jpg',
//     'assests/images/1.jpg',
//   ];

//   @override
//   void initState() {
//     super.initState();

//     // Initialize ScrollController
//     _scrollController = ScrollController();

//     // Initialize AnimationController for seamless scrolling
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 10),
//     )..addListener(() {
//         if (_scrollController.hasClients) {
//           // Smoothly scroll down the list
//           _scrollController.jumpTo(
//               _controller.value * _scrollController.position.maxScrollExtent);
//         }
//       });

//     _controller.repeat(); // Repeat the animation
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Create a list of images with repetition for seamless scrolling
//     final repeatedImages =
//         List.generate(3, (_) => _images).expand((x) => x).toList();

//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               flex: 2,
//               child: Container(
//                 color: const Color.fromARGB(255, 39, 119, 252),
//                 child: ListView.builder(
//                   controller: _scrollController,
//                   physics:
//                       const NeverScrollableScrollPhysics(), // Prevent user interaction
//                   itemCount: repeatedImages.length,
//                   itemBuilder: (context, index) {
//                     return Image.asset(
//                       repeatedImages[
//                           index % _images.length], // Repeat images infinitely
//                       height: 100, // Adjust height as needed
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                     );
//                   },
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
