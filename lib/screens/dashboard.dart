import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d29),
      body: CustomScrollView(
        slivers: <Widget>[
          const CustomAppBar(),
          const WalletBalWidget(),
          const DepositWithdrawWid(),
          SliverToBoxAdapter(
            child: Row(),
          )
        ],
      ),
    );
  }
}

class DepositWithdrawWid extends StatelessWidget {
  const DepositWithdrawWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              height: 50,
              minWidth: 150,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text(
                "Deposit",
                style:
                    TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              color: const Color.fromARGB(224, 40, 36, 57),
              height: 50,
              minWidth: 150,
              child: const Text(
                "Withdraw",
                style: TextStyle(
                  color: Color.fromARGB(255, 172, 170, 185),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WalletBalWidget extends StatelessWidget {
  const WalletBalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverToBoxAdapter(
        child: Center(
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      // height: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(224, 40, 36, 57),
                        // borderRadius:
                        //     BorderRadius.all(Radius.circular(10)),

                        border: Border(
                          top: BorderSide(
                            color: Color(0xff23DD9C),
                            width: 3,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "6.097 ETH",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "\$20,000.57",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 172, 170, 185),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    MdiIcons.arrowTopRight,
                                    color: Color(0xff23DD9C),
                                  ),
                                  Text(
                                    "1.37%",
                                    style: TextStyle(
                                      color: Color(0xff23DD9C),
                                    ),
                                  )
                                ])
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: -0,
                      top: -0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Wallet Balance",
                            style: TextStyle(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      backgroundColor: const Color(0xff1f1d29),
      leading: const Icon(MdiIcons.account),
      actions: const [
        Icon(MdiIcons.creditCardSearchOutline),
        SizedBox(width: 20),
        Icon(MdiIcons.bellOutline),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Wallet",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: Color.fromARGB(255, 172, 170, 185),
              ),
            ),
            ElevatedButton.icon(
              onPressed: null,
              label: const Text(""),
              icon: const Icon(
                MdiIcons.chevronDown,
                color: Colors.white,
                size: 15,
              ),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
            )
          ],
        ),
        titlePadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      ),
    );
  }
}
