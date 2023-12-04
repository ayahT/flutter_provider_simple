import 'package:flutter/material.dart';
import 'package:flutter_provider_simple/providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
        title: const Text("Home",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text(
          context.watch<UserProvider>().name ?? '',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
