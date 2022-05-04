import 'package:flutter/material.dart';
import 'package:loginpage/firstpage/first.dart';
import 'package:loginpage/loginpage/register.dart';


class LogPage extends StatefulWidget {
  const LogPage({ Key? key }) : super(key: key);

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  final FocusNode passwordField = FocusNode();
bool password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF162A49),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: kToolbarHeight),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle
                  ),
                ),

                SizedBox(height: 10,),

                RaisedButton(
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: Text('Continue with Google'),
                  onPressed:  () {},
                  ),

                  SizedBox(height: 30,),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('Login', style: Theme.of(context).textTheme.headline1),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: 'example@email.com',
                            prefixIcon: Icon(Icons.email_outlined),
                          ),
                          onEditingComplete: () {
                            FocusScope.of(context).requestFocus(passwordField);
                          },
                        ),
                        SizedBox(height:  16),

                        TextFormField(
                          focusNode: passwordField,
                autocorrect: true,
                obscureText: password,
              //  maxLength: 15,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outlined),
                  suffixIcon: InkWell(
                    child: Icon( 
                      password?Icons.visibility_off: Icons.visibility),
                      onTap: togglePasswordView,
                  ),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  labelText: 'Password',
                )
              ),

              SizedBox(height:30 ,),

              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: RaisedButton(
                    textColor: Colors.teal,
                    child: Text('Login'),
                    onPressed: () {
                      
                    }),
                ),
              ),

              TextButton(
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                     }, child:  Align( alignment: Alignment.centerRight, child: Text('forget Password?', style: TextStyle( color:  Colors.green.shade300, fontSize: 10 ),)),),
                 
              SizedBox(height: 10),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   
                   children: [
                     Text('Don"t Have an account?', style: TextStyle( color: Colors.black, fontSize: 12 ),),
                     SizedBox(width: 5,),
                     TextButton(
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                       }, child:  Text('Create an account', style: TextStyle( color: Colors.teal, fontSize: 12 ),),)
                   ],),
                        ]
                      ),
                    ),
                  )
              ],),
          ),
        ),)
    );
  }

  void togglePasswordView() {
    setState(() {
      password = !password;
    });
  }
}