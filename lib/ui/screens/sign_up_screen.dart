import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../../app/assets_path.dart';
import '../../utils/color.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSecured = true;
  bool _isEmailValid = false; // Track email validity

  final FocusNode _nameFocus=FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

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

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text.trim() == _confirmPasswordController.text.trim()) {
        // Success: Show message and go to Home Screen
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Sign up successful'), backgroundColor: Colors.green),
        );
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        // Password mismatch error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Password and Confirm Password must be the same!'), backgroundColor: Colors.red),
        );
      }
    } else {
      // Form validation failed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Sign up failed! Please check your credentials.'), backgroundColor: Colors.red),
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
                  Text("Welcome ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                  SizedBox(height: 6),
                  Text("Create your account.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black.withValues(alpha: 0.5))),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "User Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _nameController,
                        focusNode: _nameFocus,
                        autovalidateMode: AutovalidateMode.onUserInteraction,// Auto validate on user interaction
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,// Move focus to next field
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_emailFocus);// Move focus to password field
                        },
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "Please enter your name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Imtiaz Shamim Rony",
                          prefixIcon: Icon(Icons.person, size: 20, color: Colors.black.withValues(alpha: 0.3)),
                          labelText: "Name",
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                          "Email address", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)),
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
                      Text(
                          "Password", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _passwordController,
                        focusNode: _passwordFocus,
                        obscureText: _isSecured,
                        keyboardType: TextInputType.visiblePassword,// Hide password
                        onFieldSubmitted: (value){
                          FocusScope.of(context).requestFocus(_confirmPasswordFocus);
                        },
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
                          hintText: "Write your  password",
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
                      SizedBox(height: 8),
                      Text(
                          "Confirm Password", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _confirmPasswordController,
                        focusNode: _confirmPasswordFocus,
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
                          hintText: "Write your confirm password",
                          labelText: "Confirm Password",
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
                  GestureDetector(
                    onTap: _signUp,
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
                        child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
