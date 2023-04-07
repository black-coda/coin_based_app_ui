import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

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
            padding: const EdgeInsets.only(top: 0.0),
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
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://1000logos.net/wp-content/uploads/2023/04/FTX-Token-Logo.png"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
