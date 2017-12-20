# DON'T PANIC
# 不要担心，不要害怕，这个项目保证可以运行

## 中国人民大学LaTeX论文模板

目前支持本科、硕士（学硕+专硕）和博士

**如果已经有ructhesis.cls文件的可以直接使用。**
**目前的版本使用了[2015国标](https://github.com/ustctug/gbt-7714-2015)的参考文献样式。**
在main.tex文件下使用如下命令：

这里我们使用xelatex作为排版引擎，第一步编译main.tex文件，第二步处理参考文献，然后再编译两遍生成pdf文件。

`$ xelatex main.tex`
`$ bibtex main.tex`
`$ xelatex main.tex`
`$ xelatex main.tex`

##重要信息

**1、编辑器要用UTF-8的编码要不然你打开是乱码。**
**2、排版引擎使用XeLaTeX，要不然会报错。**


###必要的字体文件

| 字体              | PostScript名称      |
|-------------------|---------------------|
| `Times New Roman` | `TimesNewRomanPSMT` |
| `Arial`           | `ArialMT`           |
| `Courier New`     | `CourierNewPSMT`    |
| `宋体`            | `SimSun`            |
| `黑体`            | `SimHei`            |
| `仿宋`            | `FangSong`          |


**需要生成封皮的还需要自行下载安装**

- 方正小标宋           PostScript名称:`FZXBSJW–GB1-0`

### 必要的宏包

**全部都是TeX Live自带的**
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

###想编译模板文件和生成手册的可以执行下述代码

生成模板文件`ructhesis.cls`
`$ latex ructhesis.ins`

生成手册`ructhesis.pdf`

`$ xelatex ructhesis.dtx`
`$ makeindex -s gind.ist -o ructhesis.ind ructhesis.idx `
`$ makeindex -s gglo.ist -o ructhesis.gls ructhesis.glo `
`$ xelatex ructhesis.dtx`
`$ xelatex ructhesis.dtx`

## 在Windows下编译
1. 安装[Tex Live](http://www.tug.org/texlive)。把`bin`目录例如`D:\texlive\2016\bin\win32`加入PATH环境变量。
2. 安装字体。[下载地址](http://pan.baidu.com/s/1eRFJXnW)，有的字体Windows自带了，有的字体Ubuntu自带了，但都不全，还是一次性安装完所有字体比较方便。
3. 安装[TeXstudio](http://texstudio.sourceforge.net)
4. (可选)启动**Tex Live Manager**，更新所有已安装的软件包。
5. 配置**TeX Studio**。
    1. 启动**TeX Studio**，选择 `Options-->Configure Texstudio-->Commands`，`XeLaTeX` 设置为 `xelatex -synctex=1 -interaction=nonstopmode %.tex`；
    2. 选择 `Options-->Configure Texstudio-->Build`
    3. Build & View 由默认的 PDF Chain 改为 Compile & View；
    4. `Default Compiler` 由默认的`pdfLaTeX`修改为`Xelatex`；
    5. `PDF Viewer`改为`Internal PDF Viewer(windowed)`，这样预览时会弹出一个独立的窗口，这样比较方便。
6. 编译。用`TeX Studio`打开`main.tex`，点击界面上的绿色箭头就可以开始编译了。
    在下方的窗口可以看到`TeX Studio`正在使用的编译命令是`xelatex -synctex=1 -interaction=nonstopmode "main".tex`

## 在Ubuntu下编译
1. `sudo apt install texlive`
2. 安装字体。
3. 安装`sudo apt install texstudio`
4. 配置`TeX Studio`。

    启动Tex Studio，选择 `Options-->Configure Texstudio-->Commands`，`xelatex` 设置为 `xelatex -synctex=1 -interaction=nonstopmode %.tex`；

    选择 `Options-->Configure Texstudio-->Build`

    `Build & View` 由默认的 `PDF Chain` 改为 `Compile & View`；

    `Default Compiler` 由默认的`pdflatex` 修改为 `xelatex`；

    PDF Viewer 改为 “Internal PDF Viewer(windowed)”，这样预览时会弹出一个独立的窗口，这样比较方便。

1. 编译。用TeXstudio打开`ACM-cheat-sheet.tex`，点击界面上的绿色箭头就可以开始编译了。

    在下方的窗口可以看到TeXstudio正在使用的编译命令是`xelatex -synctex=1 -interaction=nonstopmode "ACM-cheat-sheet".tex`
1. 懒人版镜像。如果不想进行上面繁琐的安装过程，我做好了一个Ubuntu VMware虚拟机镜像，已经装好了TexLive 2016, TexStudio和字体(详细的安装日志见压缩包注释)，开箱即用，下载地址 <http://pan.baidu.com/s/1jIC4p1O>。
