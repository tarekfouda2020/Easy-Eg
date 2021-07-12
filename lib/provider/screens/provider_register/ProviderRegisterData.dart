part of 'ProviderRegisterImports.dart';

class ProviderRegisterData {
  final PageController controller = new PageController();

  final FirstScreenData firstScreenData = new FirstScreenData();
  final SecondScreenData secondScreenData = new SecondScreenData();
  final ThirdScreenData thirdScreenData = new ThirdScreenData();

  final ProviderRegisterModel model = new ProviderRegisterModel();

  goToNextPage() {
    controller.nextPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  goToBackPage() {
    controller.previousPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }



}
