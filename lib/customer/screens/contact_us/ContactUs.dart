part of 'ContactUsImports.dart';

class ContactUs extends StatefulWidget {
  final Color color;

  const ContactUs({required this.color});

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final ContactUsData contactUsData = new ContactUsData();

  @override
  void initState() {
    contactUsData.fetchData(context, refresh: false);
    contactUsData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context, "contactUs"),
          color: widget.color,
        ),
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
                  BuildContactForm(
                    contactUsData: contactUsData,
                    color: widget.color,
                  ),
                ],
              ),
            ),
            BuildContactSocial(
              color: widget.color,
              contactUsData: contactUsData,
            ),
          ],
        ),
      ),
    );
  }
}
