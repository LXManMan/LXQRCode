//
//  UIImage+colorImage.h
//  CLCollege
//
//  Created by zhongzhi on 2017/5/9.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#define Device_Width  [[UIScreen mainScreen] bounds].size.width//获取屏幕宽高
#define Device_Height [[UIScreen mainScreen] bounds].size.height
@interface UIImage (colorImage)

//根据颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color;

//图片缩小到固定的size
-(UIImage*)scaleToSize:(CGSize)size;

+ (UIImage *)NavImage;

//根据图片名字生成图片 原始渲染
+ (UIImage *)imageWithOriginalName:(NSString *)imageName;

//根据颜色 制定大小生成图片
+ (UIImage *)imageWithColor:(UIColor*)color size:(CGSize)size;

//添加水印图片
+ (UIImage *)LX_WaterImageWithImage:(UIImage *)image waterImage:(UIImage *)waterImage waterImageRect:(CGRect)rect;
//裁剪图片自定义圆角
+ (UIImage *)LX_ClipImageWithImage:(UIImage *)image circleRect:(CGRect)rect radious:(CGFloat) radious;


//裁剪圆形图片
+ (UIImage *)LX_ClipCircleImageWithImage:(UIImage *)image circleRect:(CGRect)rect;

//裁剪带边框的圆形图片
+ ( UIImage *)LX_ClipCircleImageWithImage:(UIImage *)image circleRect:(CGRect)rect borderWidth:(CGFloat)borderW borderColor:( UIColor *)borderColor;

//裁剪带边框的图片 可设置圆角 边框颜色
+(UIImage *)LX_ClipImageRadiousWithImage:(UIImage *)image circleRect:(CGRect)rect radious:(CGFloat)radious borderWith:(CGFloat)borderW borderColor:( UIColor *)borderColor;


//对View进行截屏
+(void)LX_CutScreenWithView:(UIView *)view successBlock:( void(^)(UIImage * image,NSData * imagedata))block;


@end
