import 'package:flutter/material.dart';
import 'package:saidciloglancv_flutter/responsive_widget.dart';

class SaidCiloglanCV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(title: Text("Said Çiloğlan CV")),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: <Widget>[],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
