# SMLSpec
cocoapods个人仓库

## 添加SDK到私有仓库或cocoapods

### cocoapods安装
* 推荐homebrew方式安装
```shell
brew install cocoapods
```

* 初始化SDK

```shell
# 创建
pod lib create XXX # XXX为SDK仓库名字
# 创建名字叫做SMLTool的SDK仓库
pod lib create SMLTool

```
* 提交代码
```shell
# 添加所有代码更改
# 可以设置`.gitignore`文件忽略一些不必要提交的问题
git add.
# 查看状态
git status

git commit -m "第一次提交"
# 打tag
git tag -a '0.1.0' -m "提交代码测试"

git remote add origin https://github.com/songmenglong/SMLTool.git

git push -f origin master

# 提交tags
git push --tags

# 验证
pod spec lint
```


# 使用这个验证即可
```shell

pod spec lint --allow-warnings

# 本地验证
pod lib lint --verbose # 检测能否上传

pod lib lint --verbose --allow-warnings # 允许警告

pod spec lint --sources='私有仓库repo地址,https://github.com/CocoaPods/Specs'

pod spec lint --sources='https://github.com/songmenglong/SMLSpec.git,https://github.com/CocoaPods/Specs'


pod spec lint --sources='https://github.com/songmenglong/SMLSpec.git,https://github.com/CocoaPods/Specs.git' --allow-warnings


pod spec lint --sources='https://github.com/songmenglong/SMLSpec.git,https://github.com/CocoaPods/Specs.git' --allow-warnings


pod spec lint --sources=‘https://github.com/CocoaPods/Specs.git' --allow-warnings


#pod lib lint --use-libraries --allow-warnings --sources=BIEncrypt
```

# --skip-import-validation  跳过验证一些参数

```shell
git push -f origin master

git push --tags
```

# 删除tag
```shell
# 删除标签
git tag -d '0.1.0'
git push origin :refs/tags/0.1.0
```

# 依赖库 有多少依赖库就写多少s.dependency
```ruby
# 设置依赖
s.dependency 'Alamofire'
# 
s.source_files = '' 

pod repo push SMLSpecs SMLTool.podspec --allow-warnings 

pod repo push SMLSpecs SMLTool.podspec --allow-warnings 

# 使用方法
# 1.创建库
# 2.第三方库编译，安装(pod install)
# 3.编译通过后，如需上传pod spec lint
# 4.工程代码中进行pod update

pod repo push SMLSpec SMLTool.podspec --allow-warnings  #前面是本地Repo名字 后面是podspec名字（如果你上一步验证的时候有--allow-warnings，那么这个提交命令也要加--allow-warnings）

pod repo push SMLSpecs SMLTool.podspec --allow-warnings

更新仓库
pod repo update --verbose
```

## 上传到GitHub
### 注册到cocoapods
```shell
pod trunk register xxx@live.cn 'username' -verbose
```

###  上传到GitHub
```shell
pod spec lint --allow-warnings
pod trunk push --allow-warnings
```

## 参考链接
[发布自己的iOS代码到cocopods spec](https://juejin.cn/post/6844903933639393288)

[iOS组件化与私有库构建流程总结，含.framework与源码兼容问题及常见错误解决方案](https://blog.csdn.net/weixin_46818265/article/details/109672044)

[CocoaPods 动/静态库混用封装组件化](https://www.jianshu.com/p/544df88b6a1e)

## 其他技术调研
* Tuist组件化管理工具