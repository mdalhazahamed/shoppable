import 'package:get/get.dart';
import 'package:shoppabl/ui/views/auth/signin_signup.dart';
import 'package:shoppabl/ui/views/splash_screen.dart';

const String splash = '/spash_screen';
const String signIn = '/signIn_screen';

//route management

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(name: signIn, page: () => SignIn_SignUp()),
];
