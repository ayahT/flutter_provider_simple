import 'package:flutter/material.dart';
import 'package:flutter_provider_simple/bottom/bottom_nav.dart';
import 'package:flutter_provider_simple/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
    ]
    ,child: MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(primarySwatch: Colors.teal,
      
      useMaterial3: true),
      home:  BottomNav()
        
        
      ),
    );
  }
}

class Skeleton {
}
