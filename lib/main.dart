import 'package:flutter/material.dart';

void main()
{
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context){
  return const MaterialApp(
    home: LoginPage(),
  );
}
}

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  //bool rememberMe=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page'),),
      body: Form(
          child: Column(
          children: [
            const Text('Welcome back',style:  TextStyle(fontWeight: FontWeight.w300,fontSize: 40)),
            const SizedBox(height: 10),
            const Text('Login to your Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70)),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password')              
            ),
           
            ElevatedButton
            (style: ElevatedButton.styleFrom(foregroundColor: const Color.fromRGBO(249, 252, 252, 1),backgroundColor:Colors.green ),            
             child:const Text('Login now'),
             onPressed: (){},
             ),         
            ElevatedButton(
              style:ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,elevation: 5),
            child:  const Text ('Continue with Google'),
             onPressed: () {
               
             },
             ),
             ],
            ),
          
        ),
        
    );
  }
}
