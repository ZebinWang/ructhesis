# ructhesis
**如果已经有ructhesis.cls文件的可以直接使用。**
在main.tex文件下使用如下命令：
这里我们使用xelatex作为引擎，第一步为编译main.tex文件，第二步处理参考文献，然后再编译两遍
`$ xelatex main.tex`
`$ bibtex main.tex`
`$ xelatex main.tex`
`$ xelatex main.tex`
**想编译模板文件和生成手册的可以执行下述代码**
生成模板文件ructhesis.cls
`$ latex ructhesis.ins`
生成手册ructhesis.pdf
`$ xelatex ructhesis.dtx`
`$ makeindex -s gind.ist -o ructhesis.ind ructhesis.idx `
`$ makeindex -s gglo.ist -o ructhesis.gls ructhesis.glo `
`$ xelatex ructhesis.dtx`
`$ xelatex ructhesis.dtx`
