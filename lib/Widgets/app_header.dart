import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../app_icons.dart';
import 'cyber_logo.dart';
import 'status_text.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: SizedBox(
        height: 64,
        child: Wrap(
          children: [
            Row(
              children: [
                const CyberLogo(),
                const Spacer(),
                const StatusText("KZT", "7804.77"),
                const Spacer(),
                const StatusText("Бонус", "400 KZT"),
                const Spacer(),
                const StatusText("CashBack", "12.04 KZT"),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    if (kDebugMode) {
                      print("menu action here");
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(
                    AppIcons.exit,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    if (kDebugMode) {
                      print("menu action here");
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
