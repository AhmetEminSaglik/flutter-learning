import 'package:flutter/material.dart';

// flutter run ile console'a yazip calistiyoruz.
//4. video basindayim https://www.youtube.com/watch?v=C6G0C7TpffQ&list=PL1k5oWAuBhgXdw1BbxVGxxWRmkGB1C11l&index=4
class ButtonLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text("Text Button",style: Theme.of(context).textTheme.displayMedium,),
            style: ButtonStyle( 
              // backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
              backgroundColor: MaterialStateProperty.resolveWith((states){
                if (states.contains(MaterialState.pressed)){
                  return Colors.green;
                }
                return Colors.blue;
              })
              
            ),
            onPressed: () {},
          ),
          ElevatedButton(onPressed: () {}, child: Text("Elavated Button")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
          InkWell(onTap: () {}, child: const Text("custom text")), //add any event to elements
          const ElevatedButton(onPressed: null, child: Text("Elavated Button ==> onPressed is NULL"))

        ],
      ),
    );
  }
}
