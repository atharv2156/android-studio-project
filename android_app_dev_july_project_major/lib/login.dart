import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 35 , top: 120),
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.3,
                right: 35,
                left: 35),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade700,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade700,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [const Text('Sign In' , style: TextStyle(
                    fontSize: 27,
                    color: Colors.lightBlueAccent ,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.lightBlueAccent,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, 'main_ui');
                        },
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {

                        },
                        child: const Text('SignUp' , style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                        )
                    ),

                    TextButton(
                        onPressed: (){

                        },
                        child: const Text('Forgot Password' , style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
