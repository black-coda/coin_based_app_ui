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

                //* Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton.icon(
                      onPressed: null,
                      label: const Text(""),
                      icon: const Icon(
                        MdiIcons.arrowLeftThinCircleOutline,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0x001e1c29),
                        elevation: 0.8,
                        padding: const EdgeInsets.all(20),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          onPressed: null,
                          label: const Text(""),
                          icon: const Icon(
                            MdiIcons.arrowLeftThinCircleOutline,
                            color: Colors.white,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x001e1c29),
                            elevation: 0.8,
                            padding: const EdgeInsets.all(20),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        const Text("Get Started"),
                        const Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
