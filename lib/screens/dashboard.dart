import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:badges/badges.dart' as badges;

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff121),
      bottomNavigationBar: Card(
        elevation: 5,
        child: Container(
          height: 50,
          color: Colors.blueGrey,
        ),
      ),

      body: const CustomScrollView(
        slivers: <Widget>[
          CustomAppBar(),
          WalletBalWidget(),
          DepositWithdrawWid(),
          ButtonOption(),
          CustomDivider(),
          NewContainer(),
          CustomDivider(),
        ],
      ),
    );
  }
}

class NewContainer extends StatelessWidget {
  const NewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: badges.Badge(
          badgeStyle: const badges.BadgeStyle(
              badgeColor: Color(0xff22db9c), padding: EdgeInsets.all(8)),
          badgeContent: const Text(
            "New",
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xff303040),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 75,
                    width: 75,
                    child: Image.network(
                      "https://o.remove.bg/downloads/592b245b-ecbe-48f2-825f-dcc6d4eaffa9/cashback-concept-style_23-2148458404-removebg-preview.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Funding Wallet",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      "Learn how to use funding wallet",
                      style: TextStyle(
                        color: Color.fromARGB(255, 172, 170, 185),
                      ),
                    ),
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

class ButtonOption extends StatelessWidget {
  const ButtonOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        IconNavButton(
          title: "P2P",
          icon: MdiIcons.handshakeOutline,
        ),
        IconNavButton(
          title: "Earn",
          icon: Icons.money_outlined,
        ),
        IconNavButton(title: "Wallet Token", icon: MdiIcons.wallet),
        IconNavButton(title: "Referral", icon: MdiIcons.accountPlusOutline),
      ],
    ));
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Color.fromARGB(255, 172, 170, 185),
              thickness: 0.3,
            ),
          ],
        ),
      ),
    );
  }
}

class IconNavButton extends StatelessWidget {
  const IconNavButton({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(13),
            decoration: const BoxDecoration(
                color: Color(0xff303040),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Icon(
              icon,
              color: const Color.fromARGB(255, 172, 170, 185),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 172, 170, 185),
            ),
          ),
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
        padding: const EdgeInsets.symmetric(vertical: 20),
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
              color: const Color(0xff303040),
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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                        color: Color(0xff303040),
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
                        padding: const EdgeInsets.only(
                            top: 34.0, left: 10, right: 10, bottom: 12),
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
