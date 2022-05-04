import 'package:flutter/material.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({ Key? key }) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FocusNode passwordField = FocusNode();
bool password = true;
bool confirmPassword = true;

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
                          Text('Sign up', style: Theme.of(context).textTheme.headline1),
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

              SizedBox(height: 16,),

              TextFormField(
                focusNode: passwordField,
                autocorrect: true,
                obscureText: confirmPassword,
              //  maxLength: 15,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outlined),
                  suffixIcon: InkWell(
                    child: Icon( 
                      password?Icons.visibility_off: Icons.visibility),
                      onTap: togglePasswordView,
                  ),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  labelText: 'Confirm Password',
                )
              ),
              
              SizedBox(height:30 ,),

              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: RaisedButton(
                    textColor: Colors.teal,
                    child: Text('Create Account'),
                    onPressed: () {
                      
                    }),
                ),
              ),

                SizedBox(height: 10),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Already Have an account?', style: TextStyle( color: Colors.black, fontSize: 12 ),),
                     SizedBox(width: 5,),
                     TextButton(
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                       }, child:  Text('Click here', style: TextStyle( color: Colors.teal, fontSize: 12 ),),)
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