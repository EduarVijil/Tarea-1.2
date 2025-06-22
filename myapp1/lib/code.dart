import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class bienvenido extends StatelessWidget {
  Widget diseno(
    { required IconData icon,  
      required String titulo,
      required String descripcion,
      required Color iconColor  })
  {
    return Padding(padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 30, color: iconColor),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titulo, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
              SizedBox(height: 5),
              Text(descripcion, style: TextStyle(fontSize: 14, color: const Color.fromARGB(255,138,143,138))),
            ],
          ),
        ),
      ],
     )
    );
  }
 @override
 Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: 
        const EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Welcome to \n Reminders',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  
                ),
                
              ),
              
            ),
            SizedBox(height: 20),
            diseno(
              icon: Icons.watch_later_outlined,
              
              titulo: 'Quick Recreation',
              descripcion: 'Simple type in your list, ask Siri or add a reminder from your Calendar app.',
              iconColor: const Color.fromARGB(255, 101, 196, 102),
            ),
            diseno(
              icon: Icons.shopping_cart_checkout_outlined,
              
              titulo: 'Grocery Shopping',
              descripcion: 'Create a Grocery List that automatically sorts items you add by category.',
              iconColor: const Color.fromARGB(255, 241, 154, 55),
            ),
            diseno(
              icon: Icons.people,
              
              titulo: 'Easy Sharing',
              descripcion: 'Collaborate on a list, and even assing individual task.',
              iconColor: const Color.fromARGB(255, 247, 206, 70),
            ),
            diseno(
              icon: Icons.view_module_rounded,
              titulo: 'Powerful Organization',
              descripcion: 'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
              iconColor: const Color.fromARGB(255, 79, 175, 248),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Boton presionado');
                  // Acción al presionar el botón
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
 
}
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
