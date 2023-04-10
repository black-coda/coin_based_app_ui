import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          end: const Alignment(0.5, 0.5),
          colors: [
            const Color(0xff1C1B24),
            Theme.of(context).scaffoldBackgroundColor,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 3.0, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      MdiIcons.wallet,
                      color: Colors.white,
                      weight: 5,
                      size: 30,
                    ),
                    Text(
                      "Bcoin",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(1),
                    // borderRadius: const BorderRadius.all(Radius.circular(380)),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.4),
                        offset: const Offset(5, 5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.normal,
                      ),
                      const BoxShadow(
                        color: Color.fromARGB(255, 57, 54, 72),
                        offset: Offset(-5, -5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                  ),
                  height: 350,
                  child: Image.network(
                      "https://1000logos.net/wp-content/uploads/2023/04/FTX-Token-Logo.png"),
                ),
                const SizedBox(
                  height: 50,
                ),
                //* Welcome Text
                const Text(
                  "Trusted and\nSmart trading",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Start buying, selling and manage your crypto at trusted platform.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //* Button

                const NavButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xff211F2B),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color(0xff211F2B),
                spreadRadius: 1,
                offset: Offset(4, 4),
                blurRadius: 10,
              ),
              BoxShadow(
                color: Color.fromARGB(31, 255, 255, 255),
                spreadRadius: 1,
                offset: Offset(-4, -4),
                blurRadius: 10,
              ),
            ],
          ),
          height: 80,
          width: 80,
          child: IconButton(
            icon: const Icon(
              MdiIcons.arrowLeftCircleOutline,
              color: Color.fromARGB(141, 255, 254, 254),
            ),
            onPressed: Navigator.of(context).pop,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              color: Color(0xff1f1d29),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff211F2B),
                  spreadRadius: 1,
                  offset: Offset(4, 4),
                  blurRadius: 15,
                ),
                BoxShadow(
                  color: Color.fromARGB(31, 255, 255, 255),
                  spreadRadius: 0.5,
                  offset: Offset(-4, -4),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff211F2B),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 80,
                  width: 80,
                  child: const Icon(
                    MdiIcons.arrowRightCircleOutline,
                    color: Color.fromARGB(255, 230, 222, 222),
                  ),
                ),
                const Text(
                  "Get started",
                  style: TextStyle(color: Colors.white),
                ),
                const Icon(
                  MdiIcons.chevronTripleRight,
                  color: Color.fromARGB(141, 255, 254, 254),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
