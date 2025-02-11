import 'package:flutter/material.dart';
import 'package:kartify_applicaion/presentation/fonts/normal_font.dart';
import 'package:kartify_applicaion/presentation/routes/routes.dart';
import 'package:kartify_applicaion/presentation/widgets/login_conainer_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<ScrollController> _scrollControllers;

  final List<String> _firstImages = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
  ];
  final List<String> _secondImages = [
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
  ];
  final List<String> _thirdImages = [
    'assets/images/9.jpg',
    'assets/images/10.jpg',
    'assets/images/11.jpg',
    'assets/images/12.jpg',
  ];

  final List<Color> _backgroundColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.cyan,
    Colors.pink,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();

    // Initialize multiple ScrollControllers for each ListView
    _scrollControllers = List.generate(3, (_) => ScrollController());

    // Initialize AnimationController
    _controller = AnimationController(
      vsync: this,
      duration:
          const Duration(seconds: 80), // Adjust duration for scrolling speed
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.addListener(() {
        for (int i = 0; i < _scrollControllers.length; i++) {
          final scrollController = _scrollControllers[i];
          if (scrollController.hasClients) {
            final maxScroll = scrollController.position.maxScrollExtent;
            final scrollOffset = i == 1
                ? (1 - _controller.value) * maxScroll // Downwards to upwards
                : _controller.value * maxScroll; // Upwards to downwards
            scrollController.jumpTo(scrollOffset);
          }
        }
      });

      _controller.repeat(); // Start the animation
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    for (final scrollController in _scrollControllers) {
      scrollController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final firstContainer =
        List.generate(5, (_) => _firstImages).expand((x) => x).toList();
    final secondContainer =
        List.generate(5, (_) => _secondImages).expand((x) => x).toList();
    final thirdContainer =
        List.generate(5, (_) => _thirdImages).expand((x) => x).toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  // First ListView: Upwards to Downwards
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      controller: _scrollControllers[0],
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: firstContainer.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(firstContainer[
                                      index % _firstImages.length]))),
                        );
                      },
                    ),
                  ),
                  // Second ListView: Downwards to Upwards
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      controller: _scrollControllers[1],
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: secondContainer.length,
                      itemBuilder: (context, index) {
                        return Container(
                          color: _backgroundColors[
                              index % _backgroundColors.length],
                          child: Image.asset(
                            secondContainer[index % _secondImages.length],
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                  // Third ListView: Upwards to Downwards
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      controller: _scrollControllers[2],
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: thirdContainer.length,
                      itemBuilder: (context, index) {
                        return Container(
                          color: _backgroundColors[
                              index % _backgroundColors.length],
                          child: Image.asset(
                            thirdContainer[index % _thirdImages.length],
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LoginContainerWidget(
                    imagePath: 'assets/svg_images/email.svg',
                    text: 'Continue with Email',
                  ),
                  LoginContainerWidget(
                    imagePath: 'assets/svg_images/google.svg',
                    text: 'Continue with Google',
                  ),
                  LoginContainerWidget(
                    imagePath: 'assets/svg_images/apple.svg',
                    text: 'Continue with Apple',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NormalTextWidget(text: "Already have an account?", color: Colors.grey,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, AppRoutes.signinScreen);
                            },
                            child: NormalTextWidget(
                              text: "Sign in",
                              color: const Color.fromARGB(255, 60, 132, 252),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
