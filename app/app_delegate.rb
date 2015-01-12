class AppDelegate
  attr_reader :window
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(MainController.new)
    @window.makeKeyAndVisible
    true
  end
end
