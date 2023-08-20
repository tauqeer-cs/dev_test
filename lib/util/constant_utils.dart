class ConstantUtils {

  static int numberOfItemsToShowInList = 12;

  static double webMinHeight = 800;

  static bool isWeb(double currentWidth){
    if(currentWidth >=  webMinHeight){
      return true;
    }

    return false;

  }
}


