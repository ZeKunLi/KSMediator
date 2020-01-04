//
//  DemoModuleADetailViewController.m
//  KSMediator
//
//  Created by lizekun on 2019/3/22.
//  Copyright © 2019 Frank. All rights reserved.
//

#import "DemoModuleADetailViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>

@interface DemoModuleADetailViewController ()
@property (nonatomic, strong, readwrite) UILabel *valueLabel;
@property (nonatomic, strong, readwrite) UIImageView *imageView;
@property (nonatomic, strong, readwrite) UIButton *returnButton;
@end

@implementation DemoModuleADetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor brownColor];
    [self.view addSubview:self.valueLabel];
    [self.view addSubview:self.imageView];
    [self.view addSubview:self.returnButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.valueLabel sizeToFit];
    [self.valueLabel topInContainer:70 shouldResize:NO];
    [self.valueLabel centerXEqualToView:self.view];
    
    self.imageView.ct_size = CGSizeMake(100, 100);
    [self.imageView centerEqualToView:self.view];

    self.returnButton.ct_size = CGSizeMake(100, 100);
    [self.returnButton bottomInContainer:0 shouldResize:NO];
    [self.returnButton centerXEqualToView:self.view];
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

#pragma mark - event response
- (void)didTappedReturnButton:(UIButton *)button
{
    if (self.navigationController == nil) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (UILabel *)valueLabel {
    if (_valueLabel == nil) {
        _valueLabel = [[UILabel alloc] init];
        _valueLabel.font = [UIFont systemFontOfSize:30];
        _valueLabel.textColor = [UIColor blackColor];
    }
    return _valueLabel;
}

- (UIImageView *)imageView {
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc] init];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _imageView;
}
- (UIButton *)returnButton {
    if (_returnButton == nil) {
        _returnButton = [[UIButton alloc] init];
        [_returnButton addTarget:self action:@selector(didTappedReturnButton:) forControlEvents:UIControlEventTouchUpInside];
        [_returnButton setTitle:@"return" forState:UIControlStateNormal];
        _returnButton.backgroundColor = [UIColor redColor];
        [_returnButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    return _returnButton;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
