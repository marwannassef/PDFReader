#import "PDFReader.h"
#import <WebKit/WebKit.h>

@implementation PDFReader

-(void)showPDF(CDVInvokedUrlCommand *)command {

    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
    configuration.userContentController = [[WKUserContentController alloc] init];
    
    NSString *source = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);";
    
    WKUserScript *script = [[WKUserScript alloc] initWithSource:source injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
    [configuration.userContentController addUserScript:script];
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:configuration];
    webView.autoresizesSubviews = true;

    
    // NSURL *targetURL = [[NSBundle mainBundle] URLForResource:@"AAA" withExtension:@"pdf"];
    NSURL *targetURL = [NSURL URLWithString:@"https://www.okaz.com.sa/PDFs/okaz_12122019.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
    
    [self.view addSubview:webView];
}