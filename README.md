# AGCS Latex Template

> 测绘学报（AGCS）Latex 模板
> 
> 作者：林杉

## Demo

<a href="main.pdf" target="_blank">main.pdf</a>

## 编译方法

xelatex -> bibtex -> xelatex -> xelatex

## 如何去掉引用的外框？

打开`AGCS.cls`，将以下两行代码用`%`将其注释掉，重新编译即可

```latex
\RequirePackage{hyperref}                                      % 引用
\hypersetup{citecolor=magenta,linkcolor=black,urlcolor=blue}   % 设置引用
```

或者不用删除，使用Adobe Reader的“打印到PDF”进行另存操作，即可令彩色框消失。

## 参考文献类型标识
- M - 图书
- C - 会议录
- G - 汇编
- N - 报纸
- J - 期刊
- D - 学位论文
- R - 报告
- S - 标准
- P - 专利
- [DB/OL] - 联机网上数据库
- [DB/MT] - 磁带数据库
- [M/CD] - 光盘图书
- [CP/DK] - 磁盘软件
- [J/OL] - 网上期刊
- [EB/OL] - 网上电子公告

## 致谢

- [黄正华老师的模板](http://aff.whu.edu.cn/huangzh/)
- [武汉大学本科毕业论文模板](https://github.com/mtobeiyf/whu-thesis)
- [北航学报自然科学版LaTeX模板（非官方）](https://github.com/Htallone/JBUAA)
- [测绘学报论文模板](http://xb.sinomaps.com/journalx_chxb/basicinfo/viewHtmlFile.action?id=23)