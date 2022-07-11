import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'calculator_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CalculatorPage()),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.network(
          'https://usemobile.com.br/wp-content/uploads/2020/07/logo-horizontal-site-branco.svg',
          color: Colors.white,
          width: MediaQuery.of(context).size.width * .5,
        ),
      ),
    );
  }
}
