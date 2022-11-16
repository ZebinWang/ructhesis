![image](https://user-images.githubusercontent.com/11362493/144565641-926c4828-1c56-486f-94cc-4b7d14afb3c8.png)



## 中国人民大学 LaTeX 论文模板

不要担心，这个项目一定可以运行

> 符合学校和老师的模板就是好模板，你需要仔细的考虑自己是否需要LaTeX，其实 Word 也是不错的软件。

> 临近毕业，发邮件提问的学弟学妹越来越多了，希望大家开[issue](https://github.com/GH1995/RUC-thesis-template-for-LaTeX/issues)讨论，或者直接发PR，这样可以帮助更多的人。


目前支持本科、硕士（学硕+专硕）和博士，排版出来的封面和下面差不多，可以在 [overleaf](https://www.overleaf.com/read/kmjxwrcjstqx) 上直接预览 

<img src="./figures/Snipaste_2020-06-17_03-55-47.png" height="500rem" alt="example" align=center />

如果已经有`ructhesis.cls`文件的可以直接使用。目前的版本使用了[2015国标](https://github.com/ustctug/gbt-7714-2015)的参考文献样式.

本模版使用`xelatex`作为排版引擎，推荐使用 overleaf 或 Linux，因为无论是 MacTex 还是 Windows 上的 TexLive 安装都容易出错。

## 字体文件

Ubuntu 欠缺一部分字体，为此我们提供[这里（不是百度网盘）](https://ruc.lanzouo.com/inJo9xec09i)以供下载。

## Ubuntu 安装 LaTeX

```shell
sudo apt install texlive-full
```

## vscode + Mac/Linux(recommand)

我目前采用的[方案](https://yangyq.net/2022/05/latex-with-visual-studio-code.html)

## 在Ubuntu下用Tex Studio编译(not recommand)

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


![Alt](https://repobeats.axiom.co/api/embed/178d62098f91e5a8b1c3439855fa0ec5cae1f803.svg "Repobeats analytics image")
