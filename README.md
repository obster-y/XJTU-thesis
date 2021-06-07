# XJTU-thesis 西安交通大学学位论文模板
[![](https://img.shields.io/badge/LPPL-LPPL-blue)](https://www.latex-project.org/lppl/)
[![](https://img.shields.io/github/last-commit/obster-y/XJTU-thesis)](https://github.com/obster-y/XJTU-thesis)
[![](https://img.shields.io/github/issues/obster-y/XJTU-thesis)](https://github.com/obster-y/XJTU-thesis/issues)

本项目为非官方的西安交通大学学位论文的 LaTeX 模板（提供 XJTU-thesis.cls）（提供中英支持），能够方便、自动地完成论文的写作，且满足学校的要求，同时模板作者5年内不会弃坑，会随时更新。

[学校的硕博学位论文要求](http://www.lib.xjtu.edu.cn/info/1102/1217.htm) 此链接的页面内容会更新，但链接不变，目前采用的版本是 2021 年 5 月 8 日 发布的模板与要求。

本模板参考了以下五个学位论文模板的相关内容：

- [电子科技大学毕业论文模板](https://github.com/x-magus/ThesisUESTC)
- [XJTU-Thesis-Template](https://github.com/Ming-Zhang-XJTU/XJTU-Thesis-Template)
- [XJTUthesis](https://github.com/Aetf/xjtuthesis)
- [XJTUthesis-master-2020](https://github.com/kohillyang/XJTUthesis-master-2020)
- [xjtuthesis-x](https://github.com/Tedxz/xjtuthesis-x)

经过阅读研究，发现上述模板或有疏漏之处，或使用说明不够详尽，或使用的包过于老旧，或工程架构不够清晰。

为了修复这些问题，方便大家的使用，同时增加新的功能，编写了 XJTU-thesis.cls 文件，添加了较为详尽的注释，可以方便的按照以后学校要求进行更新（或扩展到其他学校使用）。

除根据校方要求作出的调整外，同时并修改/添加了以下内容：
- 重构工程结构，方便人类使用和阅读，进一步将内容与形式分离
- 为英文撰写的学位论文提供支持
- 浮动体环境使用 `subcaption` 替代了 `subfig` 或 `subfigure`
- 引入 `siunitx` 正确生成数字和单位
- 为不同操作系统设置了自动的字体导入方案
- 提供了 latexmk 脚本
- 提供了可能会有用的两个小脚本（pdf 批量裁图和转换）
- 提供了自动生成答辩委员会、常规评阅人名单的方案 (LaTeX3 实现)

目前尚未完善/修复的内容：
- [完善中]英文选项下 pdf 目录项尚未调整为英文
- [修复中]英文选项下参考文献处奇数页眉无法调整为首字母大写（当前为全部大写）

如果对模板使用或格式有相关问题，请在 github 上提交 issue，如果发现 bug，欢迎提交 PR。

[![](https://img.shields.io/badge/LPPL-LPPL-blue)](https://www.latex-project.org/lppl/)
[![](https://img.shields.io/github/last-commit/obster-y/XJTU-thesis)](https://github.com/obster-y/XJTU-thesis)
[![](https://img.shields.io/github/issues/obster-y/XJTU-thesis)](https://github.com/obster-y/XJTU-thesis/issues)

This project is an unofficial Latex template (document class) for Xi'An Jiaotong University degree thesis (Chinese and English), which can facilitate the thesis writting, generate some matter conveniently and automatically, meanwhile meet the relevant requirements of the university. 

[Requirements of the thesis](http://www.lib.xjtu.edu.cn/info/1102/1217.htm). The content of this link will update but keep the link unchanged, This template now using the requirement released on May 8th 2021.

This template is modified and improved based on these five projects:

- [电子科技大学毕业论文模板](https://github.com/x-magus/ThesisUESTC)
- [XJTU-Thesis-Template](https://github.com/Ming-Zhang-XJTU/XJTU-Thesis-Template)
- [XJTUthesis](https://github.com/Aetf/xjtuthesis)
- [XJTUthesis-master-2020](https://github.com/kohillyang/XJTUthesis-master-2020)
- [xjtuthesis-x](https://github.com/Tedxz/xjtuthesis-x)

All the projects above have some problems, that's why this project exsiss.

This project make these adjustments/improvements:
- Refactor the structure of the project, make it more human-readable and decoupled.
- Support writing in english
- Substitute `subfig` or `subfigure` with `subcaption`
- Introduce `siunitx` for units
- Make font setting suits different OS
- Provied a latexmk configuration
- Provied two may-useful script for pdf cropping and transforming
- Provide functions to generate committee member list and reviewr list

This project has these issues to be solved:
- [Repairing]Bookmarks of titles in English opition is showed in Chinese
- [Repairing]The heading of References is all capitalized

If you have any questions about the template, please submit an issue directly on github. If you find a bug, please submit a pull request.

-----

## 注意事项
- 本项目**不是**官方模板，并且只能生成PDF文件，如果想要获得DOC文档只能进行二次转换。
- 本项目**未受到**任何形式的任何资助。
- 本项目目前**不能完成**学士学位论文的排版。
- 本项目希望使用者有一定LaTeX文档编写基础，但也欢迎新手使用。
- 建议安装以下提示的相关环境、软件，放弃老旧的软件。
- 本项目只提供多文档结构的模板

## 使用方法

### 基本环境
使用模板需要系统安装一种TeX环境，如 [TeXLive](http://mirror.ctan.org/systems/texlive/Images/)（不推荐 CTeX），安装有 SimSun 和 SimHei 字体（其实就是宋体和黑体）以及 Times New Roman 英文字体。在 MacOS 系统下编译会自动识别操作系统，使用 Songti SC 和 STHeiti 字体，但需要启用`--shell-escape`编译选项。Linux如果出现字体问题，需要下载放在与主tex文件同一路径下。

模板采用LaTeX类的形式封装，导入模板只需要把 `XJTU-thesis.cls` 文件放在文档所在目录，在文档开头使用 `\documentclass{XJTU-thesis}` 命令将文档的类设置成 `XJTU-thesis` 即可。

目前完成了硕博的模板，尚未完成学士学位模板。主文档内容的书写参考范例 `main.tex`。

### 工程结构

**文件夹**
- Codes: 放置使用的代码
- Figures: 放置使用的图片
- Main_Spine: 放置正文章节
- Main_Miscellaneous: 放置非正文章节的文字内容
- Reference: 放置参考文献数据库文件(.bib)
- Materials: 放置模板相关资源
  - Materials/BiblographyStyles: 放置参考文献样式
  - Materials/Fonts: 放置字体文件（为减小工程体积未放置字体，请自行添加）
  - Materials/Icons: 放置学校的相关标识
  - Materials/Requirement: 放置校方要求
  - Materials/Tools: 放置由作者提供的简单小脚本
  - Materials/Word-Templates: 放置校方提供的 Microsoft Word 模板
- Materials/Requirements/学科专业翻译/: 放置学科、专业的标准翻译文件

**文件**
- clear.bat/sh: 清理临时文件脚本
- latexmkrc: latexmk配置
- main.tex: 主文档
- XJTU-thesis.cls: 文档类
- README.md: 本文档
- LICENSE: 版权说明
- Materials/Tools/batch_pdfcrop.bat/sh: 批量裁剪 pdf 白边并重命名
- Materials/Tools/pdf2jpg.py: 批量转换 pdf 至 jpg 以避免查重（需下载 pdfbox）

### 文档编译

#### 手动编译
编译文档请使用XeLaTeX引擎。模版提供latexmkrc用于自动编译。请将工作目录切换到本项目文件夹下，执行
```bash
latexmk main.tex
```
即可自动调用相关程序进行编译，处理各种文件依赖并自动预览。执行 `latexmk -c` 命令清理所有缓存文件。

或执行
```bash
xelatex main.tex
```
命令即可，若文档内部有交叉引用或录入参考文献则需要编译两次。

#### 软件编译
请使用 VS Code + LaTeX Workshop 或使用 TeXStudio 等软件，不建议使用非正版的 WinEdt等。使用TeXstudio、Texmaker或WinEdt等编辑环境请将编译引擎设置成latexmk，如果在Windows平台下使用MiKTeX还需要安装[Perl语言解释器](http://strawberryperl.com/)。

## 论文排版指南

### 论文封面

论文真正的封面不应由此文档生成，应当在打印时取得。本模板能通过 `\thesistitles` 产生`标题页`。

### 中英文摘要

中英文摘要应包含在 `chineseabstract` 和 `englishabstract` 环境中，对应的关键字和文档类型使用 `\chinesekeywordstype` 和 `\englishkeywordstype`命令添加，并包含在相应的环境中。模板自动设置页眉和页脚。

### 论文目录

论文目录由命令 `\thesistableofcontens` 添加，并且自动处理标题，页眉以及缩进等问题。

### 主要符号表

主要符号表通过修改添加 `Main_Miscellaneous/glossary.tex` 中的文字，使用 `\thesisglossarylist` 在正文中生成。

定义专有词汇或符号使用 `\newglossaryentry{<label>}{<description>}` 命令，例如：
```latex
\newglossaryentry{Linux}
{
  name=Linux,
  description={is a generic term referring to the family of Unix-like
    computer operating systems that use the Linux kernel},
  plural=Linuces
}

\newglossaryentry{current}
{
  name=$I$,
  description={An electric current is a stream of charged particles, such as electrons or ions, moving through an electrical conductor or space},
}
```

缩略词使用 `\newacronym[description=<chinese>]{<label>}{<abbrv>}{<full>}` 命令，例如：

```latex
\newacronym[description=逻辑卷管理器]{lvm}{LVM}{Logical Volume Manager}
```

只有在正文使用命令恰当引用的缩略词才会在缩略词表中列出。正文中引用缩略词时，使用 `glossaries` 宏包提供的 `\gls` 、`\Gls`（首字母大写）或 `\glspl`（复数形式）等命令引用缩略词的 `<label>`。

具体使用方法参考[glossaries宏包文档](https://www.ctan.org/tex-archive/macros/latex/contrib/glossaries/)。

### 论文主体

论文主体的写作参考一般的LaTeX教程（如中文版的[lshort](https://www.ctan.org/pkg/lshort-zh-cn)），可以自由添加章节，章节内添加所需要的内容，分小节，插入公式、表格和图片。

各个章节通过 `\thesisbody{c1,c2,c3}` 命令引入，注意此命令只应使用一次，且注意参数顺序。

### 数学环境

数学环境的字体加粗可以使用 `\mathbf` 命令，使用斜体粗体的符号。由于 Times New Roman 字体的拉丁字母字形修长，偶尔会出现字符粘连的情况。这种情况下可以使用占位符波浪号调整距离，如 `$f^{~l}$` 和 `$\hat{f~}$` 。

注意，本模板已经定义了 `\diff` 命令产生标准的微分符号，请不要再自行使用其他符号（微分号是正体的d，与后面内容间距稍小）

### 单位与国际标准

本模板引入了 `siunitx` 宏包输出正确的数字和单位，使用方法为 `\SI{#1}{#2}`，其中 `#1` 为数值，`#2` 为单位，如 `共有\SI{100}{kg}` 。

### 代码

本模板提供了一套基本样式 `sty_basic`，使用者也可以自定义喜欢的样式

### 图片

模板已经将 `Figures/` 路径加入考虑，可以直接将图片放在其下，容易整理，工程也看起来清爽。

### 致谢

致谢部分由命令 `\thesisacknowledegment` 开始，具体内容应在 `Main_Miscellaneous/acknowledegment.tex` 中编辑。

### 参考文献

使用BibTeX录入参考文献由 `\thesisbibliography` 命令导入，默认导入 `References/reference.bib` 文件数据库，也可手动添加可选参数指定文件数据库。参考文献风格依照标准设置为 `GBT7714-2015`。

参考文献的在文中的引用分两种：在原文中作句法成分的为直接引用，使用 `\cite` 命令，否则为 `\citing` 命令，在文中文献编号显示为上标。

**!!!注意:**
当引用中文文献，而文献作者超过三位时，后面的作者想使用`等`字省略，请在.bib文件此条目内添加语言选项 `language = {zh}` 。模版会自动按照中文的习惯处理作者信息。不添加此选项则显示为 `,et al`

### 附录

附录部分由命令 `\thesisappendix{}` 命令引入，此处引入的文件内的每一个章，都会被当作是一个附录，使用大写拉丁字母顺序编号。能够自动根据要求使得所有附录在目录中合并显示为一个 `附录` 或 `Appendi{x/ces}`。


### 插入图片和表格

插入图片使用 `figure` 环境，自动调整图片前后的间距。

添加子图则使用 `\subcaption` 包内的命令。如：
```latex
\begin{figure}[H]
    \begin{subfigure}[b]{0.49\linewidth}
        \centering
        \includegraphics[height=6cm]{xjtu_blue.pdf}
        \subcaption{title1}
    \end{subfigure}
    \begin{subfigure}[b]{0.49\linewidth}
        \centering
        \includegraphics[height=6cm]{xjtu_blue.pdf}
        \subcaption{title2}
        \label{subfig:lb1}
    \end{subfigure}
    \caption{title}
\end{figure}
```

若子图过多需要跨页则在间断处插入 `\floatcontinue` 命令，具体使用可自行查询。

插入表格使用 `table` 环境，自动调整表格前后的间距和默认的字体大小。

图片文件可以统一放在 `./Figure` 目录下。具体插入图片和表格的代码参考范例 `main.tex`。

### 定理环境

数学定理请使用模板提供的定义（definition）、公理（axiom）、证明（proof）、定理（theorem）、推论（corollary）、命题（proposition）、引理（lemma）和例子（example）环境。

### 算法描述

算法描述使用 `algorithm` 环境，具体写法请参考范例 `main_singlefile.tex` 或 `Main_Spine\c3.tex` 。模板类自动加载 `algorithm2e` 宏包，详细的用法请参考[algorithm2e宏包文档](https://www.ctan.org/pkg/algorithm2e)。

### 枚举环境和脚注

枚举使用标准的 `enumerate`、`itemize` 以及 `description` 环境。脚注使用标准的 `\footnote` 命令插入。

### 便捷清空临时文件脚本

本项目提供了一个清除临时文件的 shell/bat 脚本，可以清除临时文件。

### 其他命令
模版提供一些可能有用的命令方便论文写作，其中包含一些常见的中文字符：

| 命令名称 | 字符 | Unicode 编号|
|---|---|---|
|\chinesecolon| ： | FF1A |
|\chinesespace|    | 3000 |
|\chineseperiod| 。| 3002 |
|\chinesequestion| ？  | FF1F |
|\chineseexclamation| ！  | FF01 |
|\chinesecomma| ，  | FF0C |
|\chinesesemicolon|  ； | FF1B |
|\chineseleftparenthesis|（ | FF08 |
|\chineserightparenthesis| ）| FF09 |