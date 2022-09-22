import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_card/widgets/bio_card.dart';
import 'package:my_card/extension/context_extension.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My Card'),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [Colors.pink.shade100, Colors.purple.shade300],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://www.pngitem.com/pimgs/m/294-2947257_interface-icons-user-avatar-profile-user-avatar-png.png'),
              ),
              const SizedBox(height: 10),
              Text(
                'Eng. Abeer Saqer',
                style: GoogleFonts.tajawal(color: Colors.black45, height: 1),
              ),
              const Divider(
                thickness: 0.1,
                color: Colors.black26,
                height: 50,
                indent: 30,
                endIndent: 30,
              ),
              BioCard(
                  leadingIcon: Icons.email,
                  title: 'Email',
                  subTitle: 'abir.ptc.2000@gmail.com',
                  marginBottom: 10,
                  trailingIcon: Icons.send,
                  onPressed: (){
                    context.showSnackBar(message: 'Send Email',error: false);
                  }
              ),
              BioCard(
                  leadingIcon: Icons.phone,
                  title: 'Phone',
                  subTitle: '+970-59-751-0828',
                  marginBottom: 10,
                  trailingIcon: Icons.call,
                  onPressed: (){
                    context.showSnackBar(message: 'Call Phone',error: false);

                  }
              ),
              Spacer(),
              Text('Simple Card'),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}
