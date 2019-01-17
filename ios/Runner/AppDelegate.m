#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@interface LaunchViewController : UIViewController

@end

@implementation LaunchViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor redColor];
  UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
  [self.view addGestureRecognizer:tapGestureRecognizer];
}

- (void) handleTapFrom: (UITapGestureRecognizer *)recognizer {
  [self dismissViewControllerAnimated:YES completion:nil];
}


@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  FlutterViewController* controller = (FlutterViewController*)self.window.rootViewController;
  [GeneratedPluginRegistrant registerWithRegistry:self];
  FlutterMethodChannel* launchChannel = [FlutterMethodChannel
                                          methodChannelWithName:@"launch"
                                          binaryMessenger:controller];
  [launchChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
    [controller presentViewController:[[UIViewController alloc] init] animated:YES completion:nil];
  }];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end

