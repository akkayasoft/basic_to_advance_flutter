import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
   const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a'*500),
          ),

          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b'*50),
          ),

          Container(constraints: BoxConstraints(maxWidth: 200,minWidth: 100,maxHeight: 120,minHeight: 10),
          child: Text('aa'*100,maxLines: 2),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),

    );
  }
}

class ProjectUtility{

  static BoxDecoration boxDecoration=BoxDecoration(

    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(colors: [Colors.red,Colors.black]),
    boxShadow: [BoxShadow(color: Colors.green,offset: Offset(0.1,1),blurRadius: 12)],
    border: Border.all(width: 10,color: Colors.white)

  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)],
            border: Border.all(width: 10, color: Colors.white12));
}