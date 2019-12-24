#import <Cordova/CDVPlugin.h>
#import <UIKit/UIKit.h>

@interface PDFReader : CDVPlugin, UIViewController {

}

-(void)showPDF(CDVInvokedUrlCommand *)command;

@end