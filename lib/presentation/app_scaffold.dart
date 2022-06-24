import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) => Banner(
        location: BannerLocation.topEnd,
        message: "Alpha",
        color: ThemeColors.red,
        child: Scaffold(
          body: Stack(
            children: [
              body,
              FutureBuilder(
                future: _getVersionNumber(),
                builder: ((context, AsyncSnapshot<String> snapshot) => Positioned(
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          "Version: ${snapshot.data}",
                          style: const TextStyle(
                            color: ThemeColors.white25,
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      );

  Future<String> _getVersionNumber() async => (await PackageInfo.fromPlatform()).version;
}
