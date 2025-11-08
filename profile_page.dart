import 'package:flutter/material.dart'; 

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300], 
              child: Icon(
                Icons.person, 
                size: 60,
                color: Colors.white, 
              ),
            ),
          
            
            SizedBox(height: 16),

            Text(
              'Muhammad kamal',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8),
            Text(
              'NIM: 23670127',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 4),
            Text(
              'kamal.muhammad@email.com',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            
            SizedBox(height: 24),
            Divider(),
            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Prodi', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Informatika'),
                  ],
                ),
                Column(
                  children: [
                    Text('Semester', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('5'),
                  ],
                ),
              ],
            ),
            
            Spacer(), 

            TextButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: Text('Kembali ke Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}