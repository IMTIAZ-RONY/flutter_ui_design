
/*import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/ui/screens/sign_up_screen.dart';
import '../../utils/color.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
 final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSecured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              child: Column(
                key:_formKey ,
                children: [
                  Image.asset("assets/images/paper-airplane.png",height: 100,width: 100,),
                  SizedBox(height: 6,),
                  Text("Welcome Back!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                  SizedBox(height: 6,),
                  Text("Sign in to your account.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withValues(alpha:0.5)),),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email address",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Colors.black),),
                      SizedBox(height: 8,),
                      TextFormField(
                        controller: _emailController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardAppearance:Brightness.light ,
                        keyboardType:TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (String? value){
                          if(value?.trim().isEmpty ?? true){
                            return "Please enter your email address";
                          }
                          if(EmailValidator.validate(value!) == false){
                            return "Please enter your valid email address";
                          }
                          return null;
                        },
                        decoration:InputDecoration(
                          hintText: "example@email.com",
                          prefixIcon: Icon(Icons.alternate_email,size: 20,color: Colors.black.withValues(alpha:0.3 )),
                          prefixIconColor:Colors.black ,
                          suffixIcon:Icon(Icons.check,size: 20,color: Colors.green,),
                          labelText: "Email",
                          ) ,
                        ) ,
                      SizedBox(height: 8,),
                      Text("Password",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Colors.black),),
                      SizedBox(height:8 ,),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _isSecured,
                        keyboardType:TextInputType.visiblePassword,
                        keyboardAppearance:Brightness.light ,
                        decoration:InputDecoration(
                          hintText: "write your password",
                          labelText: "password",
                          prefixIcon: Icon(Icons.lock_open,size: 20,color: Colors.black.withValues(alpha:0.3 )),
                          suffixIcon:IconButton(
                              onPressed: () {
                                _isSecured = !_isSecured;
                                setState(() {});
                              },
                              icon:  Icon(
                                _isSecured==true ?
                                Icons.visibility:Icons.visibility_off,
                                size: 20,color: _isSecured?Colors.green:Colors.black.withValues(alpha:0.3 ),),),

                        ),
                      ),


                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {  },
                      child: Text ("Forgot Password?",style:TextStyle(fontWeight: FontWeight.w500,color: AppColors.secondaryColor),),)),
                  SizedBox(
                    height:12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient:LinearGradient(colors:[
                          AppColors.buttonPrimaryColor,
                          AppColors.buttonSecondaryColor,
                          AppColors.buttonTertiaryColor,
                          AppColors.buttonBeutanColor,
                        ] ,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        stops: [0.10,0.33,0.66,1.0],
                          tileMode: TileMode.mirror,
                          transform: GradientRotation(0.5),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                    },
                  ),
                  SizedBox(height: 20,),
                  Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness:1,
                        // indent: 5,
                      //endIndent: 5,
                      color: Colors.black,),
                    ),
                    Text("  Or  ",style: TextStyle(fontWeight: FontWeight.w500,color:Colors.black.withValues(alpha:0.5)),),
                    Expanded(
                      child: Divider(thickness:1,
                        //indent: 5,
                       // endIndent:5,
                          color: Colors.black,),
                    ),
                  ]
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Flexible(child: Image.asset("assets/images/google-image.png",height: 70,width: 60,)),
                       Flexible(child: Image.asset("assets/images/facebook_image.png",height: 50,width: 50,)),
                       Flexible(child: Image.asset("assets/images/twitter_image.png",height: 50,width: 50,)),
                    ]
                  ),
                  SizedBox(height: 15,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text:"Don't have an account? ",style: TextStyle(fontWeight: FontWeight.w500,color:Colors.black),),

                        TextSpan(text:" Sign Up ",style: TextStyle(fontWeight: FontWeight.w500,color:AppColors.secondaryColor),
                        recognizer: TapGestureRecognizer()..onTap = ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()))),

                ]
                  ),),


                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/app/assets_path.dart';
import '../../utils/color.dart';
import 'home_screen.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSecured = true;
  bool _isEmailValid = false; // Track email validity

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);//when user type email on that time automatically called _validateEmail() for check email validation
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  void _validateEmail() {
    setState(() {
      _isEmailValid = EmailValidator.validate(_emailController.text.trim());
    });
  }

  void _signIn() {
    if (_formKey.currentState!.validate()) {
      // Success: Show message and go to Home Screen
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Sign in successful'), backgroundColor: Colors.green),
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      // Failure: Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Sign in failed! Please check your credentials.'), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(AssetsPath.appLogoPng, height: 100, width: 100),
                  SizedBox(height: 6),
                  Text("Welcome Back!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                  SizedBox(height: 6),
                  Text("Sign in to your account.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black.withValues(alpha: 0.5))),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email address", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _emailController,
                        focusNode: _emailFocus,
                        autovalidateMode: AutovalidateMode.onUserInteraction,// Auto validate on user interaction
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,// Move focus to next field
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_passwordFocus);// Move focus to password field
                        },
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "Please enter your email address";
                          }
                          if (!EmailValidator.validate(value)) {
                            return "Please enter a valid email address";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "example@email.com",
                          prefixIcon: Icon(Icons.alternate_email, size: 20, color: Colors.black.withValues(alpha: 0.3)),
                          suffixIcon: _isEmailValid
                              ? Icon(Icons.check, size: 20, color: Colors.green)
                              : null,
                          labelText: "Email",
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Password", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _passwordController,
                        focusNode: _passwordFocus,
                        obscureText: _isSecured,
                        keyboardType: TextInputType.visiblePassword,// Hide password
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your password";
                          }
                          if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Write your password",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock_open, size: 20, color: Colors.black.withValues(alpha: 0.3)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isSecured = !_isSecured;
                              });
                            },
                            icon: Icon(_isSecured ? Icons.visibility : Icons.visibility_off, size: 20, color: _isSecured ? Colors.green : Colors.black.withValues(alpha: 0.3)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password?", style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.secondaryColor)),
                    ),
                  ),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: _signIn,
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.buttonPrimaryColor,
                            AppColors.buttonSecondaryColor,
                            AppColors.buttonTertiaryColor,
                            AppColors.buttonBeutanColor,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.10, 0.33, 0.66, 1.0],
                          tileMode: TileMode.mirror,
                          transform: GradientRotation(0.5),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: Divider(thickness: 1, color: Colors.black)),
                      Text("  Or  ", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black.withValues(alpha: 0.3))),
                      Expanded(child: Divider(thickness: 1, color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(child: Image.asset(AssetsPath.googleLogoPng, height: 70, width: 60)),
                      Flexible(child: Image.asset(AssetsPath.facebookLogoPng, height: 50, width: 50)),
                      Flexible(child: Image.asset(AssetsPath.twitterLogoPng, height: 50, width: 50)),
                    ],
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Don't have an account? ", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black)),
                        TextSpan(
                          text: " Sign Up ",
                          style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.secondaryColor),
                          recognizer: TapGestureRecognizer()..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen())),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

