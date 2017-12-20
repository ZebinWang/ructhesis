# 中国人民大学LaTeX论文模板

**DON'T PANIC**
**不要担心，这个项目保证可以运行**


目前支持本科、硕士（学硕+专硕）和博士

**如果已经有ructhesis.cls文件的可以直接使用。**
**目前的版本使用了[2015国标](https://github.com/ustctug/gbt-7714-2015)的参考文献样式。**
在`main.tex`文件下使用如下命令：

这里我们使用`xelatex`作为排版引擎，第一步编译`main.tex`文件，第二步处理参考文献，然后再编译两遍生成`pdf`文件。

`$ xelatex main.tex`
`$ bibtex main.tex`
`$ xelatex main.tex`
`$ xelatex main.tex`

**重要信息**

- 编辑器要用`UTF-8`的编码要不然你打开是乱码。
- 排版引擎使用`xelatex`，要不然会报错。

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

你要是没有就从[这里]()下载

## 使用的宏包（没问题就忽略）

全部都是TeX Live自带的

-`ctexbook`
-`geometry`
-`hyperref`
-`graphicx`
-`titletoc`
-`ifxetex`
-`ifthen`
-`calc`
-`lscape`
-`multicol`
-`color`
-`pstricks`

## 想编译模板文件和生成手册的可以执行下述代码

### 生成模板文件`ructhesis.cls`
`$ latex ructhesis.ins`

### 生成手册`ructhesis.pdf`

`$ xelatex ructhesis.dtx`
`$ makeindex -s gind.ist -o ructhesis.ind ructhesis.idx `
`$ makeindex -s gglo.ist -o ructhesis.gls ructhesis.glo `
`$ xelatex ructhesis.dtx`
`$ xelatex ructhesis.dtx`

---

## 在Windows下编译
1. 安装[Tex Live](http://www.tug.org/texlive)。把`bin`目录例如`D:\texlive\2016\bin\win32`加入`PATH`环境变量。
2. 安装字体。[下载地址](http://pan.baidu.com/s/1eRFJXnW)，有的字体Windows自带了，有的字体Ubuntu自带了，但都不全，还是一次性安装完所有字体比较方便。
3. 安装[TeXstudio](http://texstudio.sourceforge.net)
4. 配置**TeX Studio**。
    - 启动**TeX Studio**，选择 `Options-->Configure Texstudio-->Commands`，`XeLaTeX` 设置为 `xelatex -synctex=1 -interaction=nonstopmode %.tex`
    - 选择 `Options-->Configure Texstudio-->Build`
    - Build & View 由默认的 PDF Chain 改为 Compile & View
    - `Default Compiler` 由默认的`pdfLaTeX`修改为`Xelatex`
    - `PDF Viewer`改为`Internal PDF Viewer(windowed)`，这样预览时会弹出一个独立的窗口，这样比较方便
5. 编译。用`TeX Studio`打开`main.tex`，点击界面上的绿色箭头就可以开始编译了。在下方的窗口可以看到`TeX Studio`正在使用的编译命令是`xelatex -synctex=1 -interaction=nonstopmode "main".tex`

## 在Ubuntu下用Tex Studio编译
1. `sudo apt install texlive`
2. 安装字体。`mkdir ~/.fonts && cd ~/.fonts`, 把下载好的字体解压复制到这个文件夹，然后`fc-cache -f -v`；
3. 安装`sudo apt install texstudio`
4. 配置`TeX Studio`。
    - 启动`TeX Studio`，选择 `Options-->Configure Texstudio-->Commands`，`xelatex` 设置为 `xelatex -synctex=1 -interaction=nonstopmode %.tex`；
    - 选择 `Options-->Configure Texstudio-->Build`
    - `Build & View` 由默认的 `PDF Chain` 改为 `Compile & View`
    - `Default Compiler` 由默认的`pdflatex` 修改为 `xelatex`
    - `PDF Viewer` 改为 `Internal PDF Viewer(windowed)`，这样预览时会弹出一个独立的窗口，这样比较方便。
5. 编译。用`TeX Studio`打开`main.tex`，点击界面上的绿色箭头就可以开始编译了。在下方的窗口可以看到`TeX Studio`正在使用的编译命令是`xelatex -synctex=1 -interaction=nonstopmode "main".tex`

## 如果你也和我一样使用vim，这里给你准备了点心

安装`lervag/vimtex`，配置参考[这里](https://github.com/GH1995).  `cp dotfile/latexmkrc ~/.latexmkrc`，`vimtex`的配置可以直接使用[这个](https://github.com/GH1995/vimrc/blob/master/config/vimtex.vim).


| 按键  | 用法            |
|------:|:----------------|
| `\ll` | 编译            |
| `\lv` | 查看pdf         |
| `\lc` | 清理，保留pdf   |
| `\lC` | 清理，不保留pdf |


**结束**
