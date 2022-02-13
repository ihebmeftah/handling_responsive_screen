import 'package:flutter/material.dart';

class Webscreen extends StatelessWidget {
  const Webscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
                child: Container(
              height: double.infinity,
              color: Colors.teal,
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login with your account ',
                      style: Theme.of(context).textTheme.headline4),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text('E-mail')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text('Password')),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: MaterialButton(
                            color: Colors.teal,
                            onPressed: () {},
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: MaterialButton(
                            color: Colors.blueAccent,
                            onPressed: () {},
                            child: const Text(
                              'REGISTER',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

// differnce between responsive of widget and responsive of screen 
//responsive of widget : Expanded 
  // not media query 
  //not layout builder