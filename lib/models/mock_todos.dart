import 'task.dart';
import 'todo.dart';

List<Todo> mockdata = [
  Todo(title: "Map Project", task: [
    Task(title: 'Deliverable  #1', completed: true),
    Task(title: 'Deliverable #2', completed: true),
    Task(title: 'Deliverable  #3', completed: false),
    Task(title: 'Deliverable  #4', completed: false),
    Task(title: 'Deliverable #5', completed: false)
  ]),
  Todo(title: " Preparing for online Learing", task: [
    Task(title: 'P #1', completed: true),
    Task(title: 'P #2', completed: false),
    Task(title: 'P #3', completed: false),
    Task(title: 'P #4', completed: true)
  ]),
  Todo(title: " Things to  do this weekend", task: [
    Task(title: 'T #1', completed: false),
    Task(title: 'T #2', completed: false),
    Task(title: 'T #3', completed: false),
  ]),
];
