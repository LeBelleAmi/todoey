import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoeyapp/widgets/task_item.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/models/task_data.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return taskData.isEmpty ? Center(child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("icons/list.svg", height: 100,),
              SizedBox(height: 20,),
              Text("You do not have any tasks yet, click on the circle button to add a task",
              textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w400 ),),
            ],
          ),
        ))
            : ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
        return TaskItem(
        taskTitle: task.name,
        isChecked: task.isDone,
        checkBoxCallback: (bool checkboxState){
          taskData.updateTask(task);
        }, longPressCallback: (){
          taskData.deleteTask(task);
        },);
        }, itemCount: taskData.taskCount, );
      },
    );
  }
}