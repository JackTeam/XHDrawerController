//
//  XHZoomDrawerView.m
//  XHDrawerController
//
//  Created by 曾 宪华 on 13-12-27.
//  Copyright (c) 2013年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "XHZoomDrawerView.h"
#import "XHDrawerControllerHeader.h"

@implementation XHZoomDrawerView

#pragma mark - UIView Overrides

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {        
        _scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
        self.scrollView.scrollsToTop = NO;
        self.scrollView.scrollEnabled = NO;
        self.scrollView.showsHorizontalScrollIndicator = NO;
        self.scrollView.showsVerticalScrollIndicator = NO;
        self.scrollView.backgroundColor = [UIColor clearColor];
        self.scrollView.contentSize = CGSizeMake((CGRectGetWidth(frame) + XHContentContainerViewOriginX * 2), CGRectGetHeight(frame));
        
        // 左边
        _leftContainerView = [[UIView alloc] initWithFrame:self.bounds];
        
        // 中间内容
        _contentContainerView = [[UIView alloc] initWithFrame:self.bounds];
        xh_UIViewSetFrameOriginX(self.contentContainerView, XHContentContainerViewOriginX);
        
        // 中间内容按钮
        _contentContainerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.contentContainerButton.frame = self.contentContainerView.bounds;
        [self.contentContainerView addSubview:self.contentContainerButton];
        
        // 右边
        _rightContainerView = [[UIView alloc] initWithFrame:self.bounds];
        xh_UIViewSetFrameOriginX(self.rightContainerView, CGRectGetWidth(self.contentContainerView.frame) + XHContentContainerViewOriginX);
        
        
        [self.scrollView setContentOffset:CGPointMake(XHContentContainerViewOriginX, 0.0f) animated:NO];
        
        [self.scrollView addSubview:self.leftContainerView];
        [self.scrollView addSubview:self.rightContainerView];
        [self.scrollView addSubview:self.contentContainerView];
        [self addSubview:self.scrollView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.backgroundView.frame = self.bounds;
    [self.contentContainerView bringSubviewToFront:self.contentContainerButton];
}

#pragma mark - Accessors

- (void)setBackgroundView:(UIView *)backgroundView {
    [self.backgroundView removeFromSuperview];
    _backgroundView = backgroundView;
    [self insertSubview:self.backgroundView atIndex:0];
}

@end
