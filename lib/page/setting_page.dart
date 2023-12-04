import 'package:flutter/material.dart';
import 'package:flutter_provider_simple/providers/user_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
    TextEditingController? username =TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'settings',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'UserName: ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(context.watch<UserProvider>().name ?? '',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  controller: username,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  context.read<UserProvider>().setName(username!.text);
                  FocusManager.instance.primaryFocus?.unfocus();
                
                },
                child: const Text("save"),
              )
            ]),
      ),
    );
  }
}
