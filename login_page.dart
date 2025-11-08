import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
  final _emailController = TextEditingController(text: 'kamal');
  final _passwordController = TextEditingController(text: '12345');

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Selamat Datang',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Text(
              'Silakan login untuk melanjutkan',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48),

            
Icon(Icons.flutter_dash, size: 100, color: Colors.blue),

            SizedBox(height: 24),

            TextField(
              controller: _emailController, 
              decoration: InputDecoration(
                labelText: 'Email/Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            TextField(
              controller: _passwordController, 
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 32),

            ElevatedButton(
              onPressed: () {
                
                const String userBenar = 'kamal';
                const String passBenar = '12345';

                
                String emailInput = _emailController.text;
                String passwordInput = _passwordController.text;

                if (emailInput.isEmpty || passwordInput.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Email dan Password tidak boleh kosong!'),
                    ),
                  );
                }
                
              
                else if (emailInput == userBenar && passwordInput == passBenar) {
                  
                
                  Navigator.pushReplacementNamed(context, '/dashboard');

                }
                
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.orange,
                      content: Text('Username atau Password Anda salah.'),
                    ),
                  );
                }
                
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}