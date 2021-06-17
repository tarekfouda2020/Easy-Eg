part of 'ContactUsImports.dart';


class ContactUs extends StatefulWidget {
  final Color color;

  const ContactUs({required this.color});
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs>{

   ContactUsData contactUsData = new ContactUsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "تواصل معنا",color: widget.color,),
        preferredSize: Size.fromHeight(60),
      ),

      body: LinearContainer(
        color: widget.color,
        child: Column(
          children: [
            Flexible(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15),
                children: [
                  BuildContactForm(contactUsData: contactUsData),

                ],
              ),
            ),
            BuildContactSocial()
          ],
        ),
      ),

    );
  }
}

