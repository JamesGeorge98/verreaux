import 'package:flutter/material.dart';

class VerreauxAppBar extends StatefulWidget implements PreferredSizeWidget {
  const VerreauxAppBar({super.key});

  @override
  State<VerreauxAppBar> createState() => _VerreauxAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 140);
}

class _VerreauxAppBarState extends State<VerreauxAppBar> {
  List<String> navList = [];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          width: double.infinity,
          height: 50,
        ),
        AppBar(
          
          title: const Text("Verreaux"),
          leadingWidth: width * 0.3,
          leading: Row(children: [
            const SizedBox(
              width: 20,
            ),
            navBar(title: "Home", onTap: () {}),
            navBar(title: "Shop"),
            navBar(title: "lookBook"),
            navBar(title: "Blog"),
            navBar(title: "Contact")
          ]),
          actions: [
            navBar(title: "Log In"),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.shopping_cart_rounded),
            const Text(
              "0",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    );
  }

  Widget navBar({required String title, void Function()? onTap}) {
    return TextButton(
      onPressed: onTap ?? () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          //if (states.contains(MaterialState.focused)) return Colors.red;
          if (states.contains(MaterialState.hovered)) return Colors.white;
          //if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Colors.transparent; // null throus error in flutter 2.2+.
        }),
      ),
      child: Text(title),
    );
  }
}
