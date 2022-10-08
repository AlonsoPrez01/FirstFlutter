import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print("Initia State");
  }

  void increment() {
    _counter++;
    setState(() {

    });
  }

  void decrement(){
    _counter--;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primera app"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: decrement, child:const Icon(Icons.remove),),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: increment, child:const Icon(Icons.add),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _counter++;

      },
        //Icon(Icons.remove)
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola mundito"),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
        */