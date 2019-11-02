import 'package:flutter/material.dart';
import 'package:saidciloglancv_flutter/responsive_widget.dart';

class SaidCiloglanCV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        //appBar: AppBar(title: Text("Said Çiloğlan")),
        body: SingleChildScrollView(),
      ),
      smallScreen: Scaffold(
        appBar: AppBar(title: Text("Said Çiloğlan")),
        drawer: SafeArea(
          child: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: <Widget>[
                DrawerHeader(
                  child: Row(
                    children: <Widget>[
                      LayoutBuilder(
                        builder: (context, constraints){
                          return Container(
                            width: constraints.maxHeight,
                            decoration: BoxDecoration(
                              //backgroundBlendMode: BlendMode.luminosity,
                              color: Colors.deepOrange,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/pp.jpg"),
                                alignment: Alignment.center,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                      Expanded(
                        child: Text(
                          "Said\nÇiloğlan",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person, size: 30,),
                  title: Text("Who Am I", style: TextStyle(fontSize: 24),),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(child: SingleChildScrollView()),
      ),
    );
  }
}
