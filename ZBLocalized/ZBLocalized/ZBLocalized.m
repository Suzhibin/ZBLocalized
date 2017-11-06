//
//  ZBLocalized.m
//  ZBKit
//
//  Created by NQ UEC on 2017/5/12.
//  Copyright © 2017年 Suzhibin. All rights reserved.
//

#import "ZBLocalized.h"

@implementation ZBLocalized
+ (ZBLocalized *)sharedInstance{
    static ZBLocalized *language=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        language = [[ZBLocalized alloc] init];
    });
    return language;
}

- (void)initLanguage{
    NSString *language=[self currentLanguage];
    if (language.length>0) {
        NSLog(@"自设置语言:%@",language);
    }else{
        [self systemLanguage];
    }
}

- (NSString *)currentLanguage{
    NSString *language=[[NSUserDefaults standardUserDefaults]objectForKey:AppLanguage];
    return language;
}

- (void)setLanguage:(NSString *)language{
    [[NSUserDefaults standardUserDefaults] setObject:language forKey:AppLanguage];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)systemLanguage{
    NSString *languageCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"][0];
    NSLog(@"系统语言:%@",languageCode);
    if([languageCode hasPrefix:@"zh-Hant"]){
        languageCode = @"zh-Hant";//繁体中文
    }else if([languageCode hasPrefix:@"zh-Hans"]){
        languageCode = @"zh-Hans";//简体中文
    }else if([languageCode hasPrefix:@"pt"]){
        languageCode = @"pt";//葡萄牙语
    }else if([languageCode hasPrefix:@"es"]){
        languageCode = @"es";//西班牙语
    }else if([languageCode hasPrefix:@"th"]){
        languageCode = @"th";//泰语
    }else if([languageCode hasPrefix:@"hi"]){
        languageCode = @"hi";//印地语
    }else if([languageCode hasPrefix:@"ru"]){
        languageCode = @"ru";//俄语
    }else if([languageCode hasPrefix:@"ja"]){
        languageCode = @"ja";//日语
    }else if([languageCode hasPrefix:@"en"]){
        languageCode = @"en";//英语
    }else{
        languageCode = @"en";//英语
    }
    [self setLanguage:languageCode];
}
/*  升级ios9之后，使得原本支持中英文的app出现闪退，中英文混乱的问题！大家不要慌，原因是升级之后中英文目录名字改了。在真机上，中文资源目录名由zh-Hans---->zh-Hans-CN，英文资源目录名由en---->en-CN，ios9模拟器上面的中英文资源目录名和真机上面的不一样，分别是zh-Hans-US，en-US。
 */

@end
