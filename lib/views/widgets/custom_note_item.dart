import 'package:flutter/material.dart';



class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 16,left: 10),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter Tips',
               style: TextStyle(
                color: Colors.black,
                fontSize: 24
               ),),
              
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text('build your career with tharwat samy',
                 style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 16
                 ),
                ),
              ),
              trailing: IconButton(onPressed:(){}, icon: Icon(Icons.delete,
              color: Colors.black,
              size: 32,
              )),
            ),
            
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('August 19 , 2026',
                      
              style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 16),
              ),
            ),
          ],
          
        ),
        
      ),
    );
  }
}
