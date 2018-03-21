# 中国人民大学LaTeX论文模板——不要担心，这个项目可以运行

Table of Contents
=================

   * [中国人民大学LaTeX论文模板——不要担心，这个项目可以运行](#中国人民大学latex论文模板不要担心这个项目可以运行)
      * [字体文件](#字体文件)
      * [Ubuntu安装LaTeX](#ubuntu安装latex)
      * [使用的宏包（没问题就忽略）](#使用的宏包没问题就忽略)
      * [想编译模板文件和生成手册的可以执行下述代码](#想编译模板文件和生成手册的可以执行下述代码)
         * [生成模板文件ructhesis.cls](#生成模板文件ructhesiscls)
         * [生成手册ructhesis.pdf](#生成手册ructhesispdf)
      * [在Windows下编译](#在windows下编译)
      * [在Ubuntu下用Tex Studio编译](#在ubuntu下用tex-studio编译)
      * [如果你也和我一样使用vim，这里给你准备了插件和推荐配置](#如果你也和我一样使用vim这里给你准备了插件和推荐配置)
      * [结束](#结束)

**Tips:** 临近毕业，发邮件提问的学弟学妹越来越多了，但一个人的精力有限，有些问题是重复的，有的问题涉及的细节很多。更希望大家开[issue](https://github.com/GH1995/RUC-thesis-template-for-LaTeX/issues)讨论，或者直接发PR给我，这样可以帮助更多的人。

目前支持本科、硕士（学硕+专硕）和博士

![example](https://gh1995.github.io/2017/12/20/RUC-thesis-template/ruc.png)

如果已经有`ructhesis.cls`文件的可以直接使用. 目前的版本使用了[2015国标](https://github.com/ustctug/gbt-7714-2015)的参考文献样式.

这里我们使用`xelatex`作为排版引擎，第一步编译`main.tex`文件，第二步处理参考文献，然后再编译两遍生成`pdf`文件.

```shell
$ xelatex main.tex
$ bibtex main.tex
$ xelatex main.tex
$ xelatex main.tex
```

**重要信息**

- 编辑器要用`UTF-8`的编码要不然你打开是乱码
- 排版引擎使用`xelatex`，要不然会报错

---

## 字体文件

| 字体              | PostScript名称      |
|-------------------|---------------------|
| `Times New Roman` | `TimesNewRomanPSMT` |
| `Arial`           | `ArialMT`           |
| `Courier New`     | `CourierNewPSMT`    |
| `宋体`            | `SimSun`            |
| `黑体`            | `SimHei`            |
| `仿宋`            | `FangSong`          |
| `方正小标宋`      | `FZXBSJW–GB1-0`     |

可以从[这里](http://pan.baidu.com/s/1eRFJXnW)下载

## Ubuntu安装LaTeX
```shell
sudo apt install texlive-full
```

## 使用的宏包（没问题就忽略）

全部都是TeX Live自带的

- `ctexbook`
- `geometry`
- `hyperref`
- `graphicx`
- `titletoc`
- `ifxetex`
- `ifthen`
- `calc`
- `lscape`
- `multicol`
- `color`
- `pstricks`

## 想编译模板文件和生成手册的可以执行下述代码

### 生成模板文件`ructhesis.cls`
`$ latex ructhesis.ins`

### 生成手册`ructhesis.pdf`

- `$ xelatex ructhesis.dtx`
- `$ makeindex -s gind.ist -o ructhesis.ind ructhesis.idx `
- `$ makeindex -s gglo.ist -o ructhesis.gls ructhesis.glo `
- `$ xelatex ructhesis.dtx`
- `$ xelatex ructhesis.dtx`

---

## 在Windows下编译

1. 安装[Tex Live](http://www.tug.org/texlive). 把`bin`目录例如`D:\texlive\2016\bin\win32`加入`PATH`环境变量.
2. 安装字体. [下载地址](http://pan.baidu.com/s/1eRFJXnW)，有的字体Windows自带了，有的字体Ubuntu自带了，但都不全，还是一次性安装完所有字体比较方便.
3. 安装[TeXstudio](http://texstudio.sourceforge.net)
4. 配置TeX Studio
    - 启动TeX Studio，选择 `Options-->Configure Texstudio-->Commands`，`XeLaTeX` 设置为 `xelatex -synctex=1 -interaction=nonstopmode %.tex`
    - 选择 `Options-->Configure Texstudio-->Build`
    - `Build & View` 由默认的 `PDF Chain` 改为 `Compile & View`
    - `Default Compiler` 由默认的`pdfLaTeX`修改为`Xelatex`
    - `PDF Viewer`改为`Internal PDF Viewer(windowed)`，这样预览时会弹出一个独立的窗口，这样比较方便
5. 编译. 用`TeX Studio`打开`main.tex`，点击界面上的绿色箭头就可以开始编译了. 在下方的窗口可以看到`TeX Studio`正在使用的编译命令是`xelatex -synctex=1 -interaction=nonstopmode "main".tex`

## 在Ubuntu下用Tex Studio编译
1. `sudo apt install texlive`
2. 安装字体. `mkdir ~/.fonts && cd ~/.fonts`, 把下载好的字体解压复制到这个文件夹，然后`fc-cache -f -v`；
3. 安装`sudo apt install texstudio`
4. 配置`TeX Studio`
    - 启动`TeX Studio`，选择 `Options-->Configure Texstudio-->Commands`，`xelatex` 设置为 `xelatex -synctex=1 -interaction=nonstopmode %.tex`；
    - 选择 `Options-->Configure Texstudio-->Build`
    - `Build & View` 由默认的 `PDF Chain` 改为 `Compile & View`
    - `Default Compiler` 由默认的`pdflatex` 修改为 `xelatex`
    - `PDF Viewer` 改为 `Internal PDF Viewer(windowed)`，这样预览时会弹出一个独立的窗口，这样比较方便.
5. 编译. 用`TeX Studio`打开`main.tex`，点击界面上的绿色箭头就可以开始编译了. 在下方的窗口可以看到`TeX Studio`正在使用的编译命令是`xelatex -synctex=1 -interaction=nonstopmode "main".tex`

## 如果你也和我一样使用vim，这里给你准备了插件和推荐配置

安装`lervag/vimtex`，配置参考[这里](https://github.com/GH1995). `cp dotfile/latexmkrc ~/.latexmkrc`，`vimtex`的配置可以直接使用[这个](https://github.com/GH1995/vimrc/blob/master/config/vimtex.vim).


| 按键  | 用法            |
|------:|:----------------|
| `\ll` | 编译            |
| `\lv` | 查看pdf         |
| `\lc` | 清理，保留pdf   |
| `\lC` | 清理，不保留pdf |


## 结束

如果你厌恶了**error**，发邮件给我吧。 tulingjiaoyu#126.com

