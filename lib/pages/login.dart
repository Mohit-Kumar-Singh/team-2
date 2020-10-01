import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(MediaQuery.of(context).size.height);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.blueGrey[800]])),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: height * .7,
              width: width * .8333,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.8),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                      top: -50,
                      left: MediaQuery.of(context).size.width * .265,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: width * .15,
                            backgroundImage:
                                AssetImage('IMAGES/conatusDark.jpg'),
                          ),
                        ],
                      )),
                  Positioned(
                    top: height * .16,
                    child: Container(
                      width: width * .83,
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  hintText: 'abc@gmail.com',
                                  labelText: 'Email'),
                              maxLines: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  labelText: 'Password'),
                              obscureText: true,
                            ),
                          ),
                          SizedBox(height: 4),
                          RichText(
                            text: TextSpan(
                              text: 'Forgot Password , ',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Recover Password',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.underline)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an Account ? ',
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Signup here',
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => Signup()),
                              //     );
                              //   },
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
