class SpleshScreenViewModel {
  final String subText;
  final String imageAdress;
  SpleshScreenViewModel({this.imageAdress, this.subText});
  static List<SpleshScreenViewModel> pageViewList = [
    SpleshScreenViewModel(
        subText: 'Welcome to Tokoto, Let’s shop!',
        imageAdress: 'images/splash_1.png'),
    SpleshScreenViewModel(
        subText:
            'We help people conect with store \naround United State of America',
        imageAdress: 'images/splash_2.png'),
    SpleshScreenViewModel(
        subText: 'We show the easy way to shop. \nJust stay at home with us',
        imageAdress: 'images/splash_3.png')
  ];
}
