import 'package:flutter/material.dart';
import 'package:postproduct_api/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderT;
  HomeProvider? homeProviderF;

  @override
  Widget build(BuildContext context) {
    homeProviderT = Provider.of<HomeProvider>(context, listen: true);
    homeProviderF = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Product post"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              String msg = await homeProviderF!.postData();
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("$msg")));
            },
            child: Text("Send")),
      ),
    ));
  }
}
