import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Rental App'),
          centerTitle: true,
          backgroundColor: Colors.green,

        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Positioned(
              left: 5.0,
              top: 5.0,
              child: Image.asset('assets/t.jpeg'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                  onPressed: () {},
                  child:
                  Text('LandLord'),

                ),

                ElevatedButton(
                  onPressed: () {},

                  child: Text('Tenant'),
                ),
              ],
            ),


            Form(child: Column(
              children: [
                SizedBox(height: 20.0,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter username',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70)
                    ),
                  ),
                  onChanged: (String value) {
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'please enter username' : null;
                  }

                ),
                SizedBox(height: 20,),

                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter email address',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                    onChanged: (String value) {
                    },
                    validator: (value) {
                      return value!.isEmpty ? 'please enter email' : null;
                    }

                ),
                  SizedBox(height: 20,),
                TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                    onChanged: (String value) {
                    },
                    validator: (value) {
                      return value!.isEmpty ? 'please enter password' : null;
                    }

                ),


                SizedBox(height: 20,),
                TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'confirm password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                    onChanged: (String value) {
                    },
                    validator: (value) {
                      return value!.isEmpty ? 'please enter password' : null;
                    }

                ),
              ],
            ),
            ),
           SizedBox(height: 20.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [

               ElevatedButton(
                 onPressed: () {},
                 child:
                 Text('login'),

               ),

               ElevatedButton(
                 onPressed: () {},

                 child: Text('sign up'),
               ),
             ],
           ),
          ],

        ),
      ),
    );
  }
}
