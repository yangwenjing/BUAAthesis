# 2015/9/13 assumptions 部分

开始翻译assumptions

# How to use it on mac

在mac 修改字体配置文件
``sudo vi /usr/local/texlive/2014/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def``

``\setCJKmainfont[BoldFont={STHeiti},ItalicFont=STKaiti]{STSong}
\setCJKsansfont{STHeiti}
\setCJKmonofont{STFangsong}

\setCJKfamilyfont{zhsong}{STSong}
\setCJKfamilyfont{zhhei}{STHeiti}
\setCJKfamilyfont{zhkai}{STKaiti}
\setCJKfamilyfont{zhfs}{STFangsong}
\setCJKfamilyfont{zhli}{LiSu}
\setCJKfamilyfont{zhyou}{YouYuan}

\newcommand*{\songti}{\CJKfamily{zhsong}} % 宋体
\newcommand*{\heiti}{\CJKfamily{zhhei}}   % 黑体
\newcommand*{\kaishu}{\CJKfamily{zhkai}}  % 楷书
\newcommand*{\fangsong}{\CJKfamily{zhfs}} % 仿宋
\newcommand*{\lishu}{\CJKfamily{zhli}}    % 隶书
\newcommand*{\youyuan}{\CJKfamily{zhyou}} % 幼圆

\endinput
``
原因： win 和mac上字体的名字不同

然后编译：xeLatex


# BUAAthesis

北航毕设论文LaTeX模板

## 项目说明

这是北航开源俱乐部维护的的北航毕设论文的LaTeX模板

目前仍在开发中，欢迎关注进展，提交bug/issue，甚至贡献代码

## From Joseph

别的宏观的话我就不多说了，这个项目也算是填补我航在这方面的一个空缺吧。

结合我个人的一些体会，将项目拆分成以下几个部分吧，当然也有一些局限，可以及时更新补充。

各位有兴趣的同学可以试着先看看别的大学的模板，再结合自己的理解进行code吧。

再说明一点：学校给的只是论文的格式规范，并没有给出范本，所以有些格式的问题需要加上自己的理解。
