import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 139, 109, 160), // พื้นหลังม่วง
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white, // การ์ดสีขาว
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(5, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // รูปโปรไฟล์
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'), 
              ),
              const SizedBox(height: 15),

              // ชื่อ–นามสกุล
              const Text(
                'Supattar Kaosamran',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),

              const Text(
                'Student ID: 650710728',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 15),

              // สาขา
              const Text(
                'Information Technology',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 15),

              const Text(
                'เป็น Introvert ที่ชอบกินเย็นตาโฟมากๆ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 15),

              // ปุ่มติดต่อ
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                onPressed: () {},
                child: const Text(
                  'Context',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),

              const SizedBox(height: 20),

              // ไอคอนโซเชียล
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.facebook, color: Colors.blue),
                  SizedBox(width: 15),
                  Icon(Icons.email, color: Colors.red),
                  SizedBox(width: 15),
                  Icon(Icons.phone, color: Colors.green),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}