import 'package:flutter/material.dart';
import 'todo_page.dart';

class MyAppTodo extends StatelessWidget {
  const MyAppTodo({super.key});

  static const String _titulo = 'To Do';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _titulo,
      theme: new ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(title: const Text(_titulo)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String actualTask = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Escribe tu tarea',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor escribe la terea faltante';
              }
              actualTask = value;
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  task.add(new ToDo(task: actualTask));
                  setState(() {});
                }
              },
              child: const Text('Subida'),
            ),
          ),
          ListBody(
            children: task.map(_buildItem).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(ToDo toDo) {
    return new ListTile(
      title: new Text(toDo.task),
      //leading: new Icon(Icons.assignment_turned_in_outlined),
      trailing: new IconButton(onPressed: (){
        task.remove(toDo);
        setState(() {});
      },
        icon: Icon(Icons.delete),
        color: Colors.amber,
      ),
      onTap: () {
        print(toDo.task);
      },
    );
  }

}