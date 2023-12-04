import 'package:flutter/material.dart';
import 'package:flutter_provider_simple/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({super.key});

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(backgroundColor: Colors.teal,
        title: const Text("Challenge",style: TextStyle(color: Colors.white),),
      ),body: Padding(padding: EdgeInsets.all(30),
      child: 
          Center(child: Text(style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),context.watch<CounterProvider>().counter.toString())),
          
        
      ),floatingActionButton: Column(mainAxisSize: MainAxisSize.min,children: [
        FloatingActionButton(shape: CircleBorder(),backgroundColor: Colors.teal,onPressed: (){
            context.read<CounterProvider>().increment();
          }, child: Icon(Icons.add,color: Colors.white,),),
          SizedBox(height: 10,),

          FloatingActionButton( shape: CircleBorder(),backgroundColor: Colors.teal,onPressed: (){
            context.read<CounterProvider>().decrement();
          }, child: Icon(Icons.remove,color: Colors.white),),

      ]),
    );
  }
}