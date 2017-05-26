# XLCircleProgress

利用贝塞尔曲线实现的圆环进度指示器

### 显示效果如下

<img src="https://github.com/mengxianliang/XLCircleProgress/blob/master/1.gif" width=250 height=446 />

### 使用方法

**创建方法:**

```objc
_circle = [[XLCircleProgress alloc] initWithFrame:CGRectMake(0, 0, circleWidth, circleWidth)];
_circle.center = self.view.center;
[self.view addSubview:_circle];
```

**刷新进度**

```objc
_circle.progress = value;
```

### 实现原理请参考[我的博文](http://blog.csdn.net/u013282507/article/details/54098206)

### 个人开发过的UI工具集合 [XLUIKit](https://github.com/mengxianliang/XLUIKit)
