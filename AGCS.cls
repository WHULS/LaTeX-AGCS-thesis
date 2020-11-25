%% ----------------------------------------------------------------
%% This program is a LaTeX class file for AGCS thesis template
%% AGCS - Acta Geodaetica et Cartographica Sinica
%% ----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{AGCS}[Acta Geodaetica et Cartographica Sinica Thesis Template]

%%% 载入Class
\LoadClass[a4paper,twocolumn,twoside]{ctexart} % A4大小，两列，ctexart布局

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 页面设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 定义页边距
\RequirePackage{geometry}
\geometry{top=25mm, bottom=5mm, left=5mm, right=5mm,
    headsep=5mm, headheight=30pt}  % 需要页脚请加上 includefoot

%%% 页眉变量
\makeatletter % 使@生效
\newcommand{\@volumnNo}{}\newcommand{\volumnNo}[1]{\renewcommand{\@volumnNo}{#1}}           % 卷号
\newcommand{\@issueNo}{}\newcommand{\issueNo}[1]{\renewcommand{\@issueNo}{#1}}              % 期刊号
\newcommand{\@pubYear}{}\newcommand{\pubYear}[1]{\renewcommand{\@pubYear}{#1}}              % 出版年份
\newcommand{\@pubMonthCn}{}\newcommand{\pubMonthCn}[1]{\renewcommand{\@pubMonthCn}{#1}}     % 出版月（中文）
\newcommand{\@pubMonthEn}{}\newcommand{\pubMonthEn}[1]{\renewcommand{\@pubMonthEn}{#1}}     % 出版月（英文）
\newcommand{\@website}{}\newcommand{\website}[1]{\renewcommand{\@website}{#1}}              % 网址
\newcommand{\@firstAuthor}{}\newcommand{\firstAuthor}[1]{\renewcommand{\@firstAuthor}{#1}}  % 第一作者

%%% 定义页眉
% E 偶数页
% O 奇数页
% L 页眉或页脚的左边部分
% C 页眉或页脚的中间部分
% R 页眉或页脚的右边部分
% H 页眉
% F 页脚
\RequirePackage{fancyhdr}           % 页眉页脚宏包
% 首页
\fancypagestyle{FirstPageStyle}
{
	\fancyhead{}
	\fancyhead[LO]
	{
		%%% TODO: How to be centered?
		% \begin{center}
		% \centering
		第 \@volumnNo 卷 \quad 第 \@issueNo 期 \\
		\quad \@pubYear 年 \@pubMonthCn 月
		% \end{center}
	}
	\fancyhead[CO]
	{
		% \begin{center}
		% \centering
		测 \quad 绘 \quad 学 \quad 报 \\
		Acta Geodaetica et Cartographica Sinica
		% \end{center}
	}
	\fancyhead[RO]
	{
		% \begin{center}
		% \centering
		Vol.\@volumnNo,\ No.\@issueNo \\
		\@pubMonthEn,\@pubYear
		% \end{center}
	}
	\renewcommand{\headrule}
	{
		\hrule height0.4pt width \headwidth \vskip1.0pt
		\hrule height0.4pt width \headwidth \vskip-2pt
	}
}
% 非首页
\pagestyle{fancy}
\fancyhead{}              % 清空所有页眉
\fancyhead[LE]{\thepage}  % 偶数页：页码 + 英文出版信息 + 网址
\fancyhead[CE]{\@pubMonthEn \ \@pubYear \ Vol.\@volumnNo \ No.\@issueNo \ AGCS}
\fancyhead[RE]{\@website}
\fancyhead[LO]{第 \@issueNo 期}
\fancyhead[CO]{\@firstAuthor,等:\@cnTitle}
\fancyhead[RO]{\thepage}  % 奇数页：中文期数 + 文章标题 + 页码
\renewcommand{\headrulewidth}{0.4pt}  % 页眉线宽
\renewcommand{\footrulewidth}{0pt}  % 页脚线宽

\makeatother  % 使@失效


%%% 修改脚注
\makeatletter%
\long\def\@makefnmark{%
\hbox {{\normalfont \textsuperscript{\circled{\@thefnmark}}}}}%
\makeatother
\makeatletter%
\long\def\@makefntext#1{%
  \parindent 1em\noindent \hb@xt@ 1.8em{\hss \circled{\@thefnmark}}#1}%
\makeatother
\skip\footins=10mm plus 1mm
\footnotesep=6pt
\renewcommand{\footnotesize}{\songti\zihao{5}}
\renewcommand\footnoterule{\vspace*{-3pt}\hrule width 0.3\columnwidth height 1pt \vspace*{2.6pt}}

\newcommand*\circled[1]{\tikz[baseline=(char.base)]{%
\node[shape=circle,draw,inner sep=0.5pt] (char) {#1};}} % 圆圈数字①



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 字体、字号及段落设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 引入宏包
\RequirePackage{listings}                    % 代码段
\RequirePackage{algorithm2e, algorithmic}    % 算法代码
\RequirePackage{amsmath, amssymb}            % 定理样式
\RequirePackage[amsmath, thmmarks]{ntheorem}
\RequirePackage{fontspec, color, url, array} % 字体
\RequirePackage{txfonts}                     % Times 风格（数学）字体
\RequirePackage{titlesec}                    % 设置标题

% %%% 定义1.5倍行距
\RequirePackage{setspace}
\renewcommand{\baselinestretch}{1.5}

%%% 设置各个标题样式
\ctexset{section={format={\raggedright \heiti \zihao{4}}}}          % 一级标题 黑体 4号
\ctexset{subsection={format={\raggedright \heiti \zihao{-4}}}}      % 二级标题 黑体小4号
\ctexset{subsubsection={format={\raggedright \heiti \zihao{-4}}}}   % 三级标题 黑体小4号
\titleformat{\paragraph}[block]{\heiti \zihao{-4}}{\theparagraph}{0em}{} % 四级标题 黑体小四号
\titlespacing{\section}{0pt}{10pt}{5pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}
\titlespacing{\paragraph}{0pt}{0pt}{0pt}



%%% 定义字体
\renewcommand{\normalsize}{\zihao{-4}}         % 正常字号
\setmainfont[Ligatures=Rare]{Times New Roman}  % 设置英文字体为 Times New Roman
\setsansfont[Ligatures=Rare]{Times New Roman}
\setmonofont[Ligatures=Rare]{Times New Roman}



%%% 数学定理样式
\theoremstyle{plain}
\theoremheaderfont{\heiti}
\theorembodyfont{\songti} \theoremindent0em
\theorempreskip{0pt}
\theorempostskip{0pt}
\theoremnumbering{arabic}
%\theoremsymbol{} %定理结束时自动添加的标志
\newtheorem{theorem}{\hspace{2em}定理}[section]
\newtheorem{definition}{\hspace{2em}定义}[section]
\newtheorem{lemma}{\hspace{2em}引理}[section]
\newtheorem{corollary}{\hspace{2em}推论}[section]
\newtheorem{proposition}{\hspace{2em}性质}[section]
\newtheorem{example}{\hspace{2em}例}[section]
\newtheorem{remark}{\hspace{2em}注}[section]
\theoremstyle{nonumberplain}
\theoremheaderfont{\heiti}
\theorembodyfont{\normalfont \rm \songti}
\theoremindent0em \theoremseparator{\hspace{1em}}
\theoremsymbol{$\square$}
\newtheorem{proof}{\hspace{2em}证明}

%%% 参考文献设置
\RequirePackage[sort&compress]{natbib}
\setcitestyle{numbers,square,comma}
\setlength{\bibsep}{0.0pt}                                              % 参考文献之间的间距
\ctexset{bibname={参考文献：}}
\bibliographystyle{unsrt}                                               % 参考文献样式
\RequirePackage{hyperref}                                               % 引用
\hypersetup{citecolor=magenta,linkcolor=black,urlcolor=blue}            % 设置引用链接颜色
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}                    % 自定义新命令\upcite, 使参考文献引用以上标出现
\renewcommand{\eqref}[1]{\textup{{\normalfont（\ref{#1}）\normalfont}}}  % 公式引用使用中文括号





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 图片、表格、列表、公式设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 宏包引入
\RequirePackage[labelsep=quad]{caption}     % 标题（序号之后空一格写标题）
\RequirePackage{bicaption}                  % 双语标题
\RequirePackage{cuted}                      % 利用其strip为图片、表格和公式提供跨栏居中
\RequirePackage{graphicx, subcaption}       % 图片
\RequirePackage{float}                      % 配合H参数使用，固定图片位置
\RequirePackage{tikz, pgfplots}             % 绘图

%%% 图表标题设置
\DeclareCaptionFont{heiti}{\heiti}                % 设置标题默认为黑体
\captionsetup[table]{textfont=heiti}  
\captionsetup[figure][bi-second]{name=Fig.}       % 设置图的英文编号前缀
\captionsetup[table][bi-second]{name=Tab.}        % 设置表的英文编号前缀
\renewcommand{\figurename}{\songti\zihao{-4} 图}  % 设置图标题字体为宋体
\renewcommand{\tablename}{\heiti\zihao{-4} 表}    % 设置表格标题字体为黑体

%%% 表格样式设置
\RequirePackage{tabularx, makecell}  % 使用tabularx创建占满宽度的表格
\newcolumntype{L}{X}
\newcolumntype{C}{>{\centering \arraybackslash}X}
\newcolumntype{R}{>{\raggedleft \arraybackslash}X}
\RequirePackage{longtable}  % 做长表格的包
\RequirePackage{booktabs}   % 做三线表的包（加粗）

%%% 列表样式设置
\RequirePackage{enumerate, enumitem}
\setlist{noitemsep}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 自定义命令
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 重写strip
\newenvironment{oneCol}
{
	\begin{strip}
	% 修改其前后弹性间距
	\stripsep 0pt plus 2pt minus 2pt
}
{
	\end{strip}
}
%%% 解决宋体无法加粗斜体的问题
\setCJKfamilyfont{zhsong1}[AutoFakeBold=true,AutoFakeSlant=true]{SimSun}
\renewcommand*{\songti}{\CJKfamily{zhsong1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 文章边角内容
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% 中文摘要
\newenvironment{cnabstract}[5]
{
	\def \cnkeyword {#1}
	\def \cnFoundation {#2}
	\def \cnClass {#3}
	\def \cnIndentifier {#4}
	\def \cnArticleId {#5}

	% 摘要标题
	{\heiti \zihao{-4} 摘 \hspace{1em} 要：}
}
{
	\par\noindent {\heiti\zihao{-4} 关键词：} \cnkeyword    % 关键字
	\par\noindent {\heiti\zihao{-4} 中图分类号：} {\cnClass}
		\hspace{2em} {\heiti\zihao{-4} 文章标识码：} {\cnIndentifier}
		\hspace{2em} {\heiti\zihao{-4} 文章编号：} {\cnArticleId}
	\par\noindent {\heiti\zihao{-4} 基金项目：} \cnFoundation  % 基金
	\vspace*{2em}
}

%%% 英文摘要
\newenvironment{enabstract}[2]
{
	\def \enkeyword {#1}
	\def \enFoundation {#2}

	% 摘要标题
	\vspace*{-2em}
	{\heiti \zihao{-4} \textbf{Abstract: }}
}
{
	\par\noindent {\bfseries\zihao{-4} Key words:} \enkeyword            % 关键字
	\par\noindent {\bfseries\zihao{-4} Foundation Support: } \enFoundation  % 基金
	\vspace*{2em}
}

%%% 标题及作者
\makeatletter  % 使@生效
\newcommand{\@cnTitle}{}\newcommand{\cnTitle}[1]{\renewcommand{\@cnTitle}{#1}}  % 中文标题
\newcommand{\@enTitle}{}\newcommand{\enTitle}[1]{\renewcommand{\@enTitle}{#1}}  % 英文标题
\newcommand{\@cnAuthor}{}\newcommand{\cnAuthor}[1]{\renewcommand{\@cnAuthor}{#1}}  % 作者中文名
\newcommand{\@enAuthor}{}\newcommand{\enAuthor}[1]{\renewcommand{\@enAuthor}{#1}}  % 作者英文名
\newcommand{\@cnAuthorUnit}{}\newcommand{\cnAuthorUnit}[1]{\renewcommand{\@cnAuthorUnit}{#1}}  % 作者单位中文
\newcommand{\@enAuthorUnit}{}\newcommand{\enAuthorUnit}[1]{\renewcommand{\@enAuthorUnit}{#1}}  % 作者单位英文
\newcommand{\@firstAuthorDescriptionCn}{}\newcommand{\firstAuthorDescriptionCn}[1]{\renewcommand{\@firstAuthorDescriptionCn}{#1}}          % 第一作者中文简介
\newcommand{\@firstAuthorDescriptionEn}{}\newcommand{\firstAuthorDescriptionEn}[1]{\renewcommand{\@firstAuthorDescriptionEn}{#1}}          % 第一作者英文简介
\newcommand{\@firstAuthorEmail}{}\newcommand{\firstAuthorEmail}[1]{\renewcommand{\@firstAuthorEmail}{#1}}                                  % 第一作者邮箱
\newcommand{\@correspondingAuthorCn}{}\newcommand{\correspondingAuthorCn}[1]{\renewcommand{\@correspondingAuthorCn}{#1}}                   % 通信作者中文姓名
\newcommand{\@correspondingAuthorEn}{}\newcommand{\correspondingAuthorEn}[1]{\renewcommand{\@correspondingAuthorEn}{#1}}                   % 通信作者英文姓名
\newcommand{\@correspondingAuthorEmail}{}\newcommand{\correspondingAuthorEmail}[1]{\renewcommand{\@correspondingAuthorEmail}{#1}}          % 通信作者邮箱


%%% 标题、作者、地址
\def\makeTitleAndAuthor
{
	\begin{oneCol}
		% 设置首页独特的页眉
		\thispagestyle{FirstPageStyle}
		\vspace*{-1em}
		% 中英文标题作者及其单位
		\par\noindent{\heiti\zihao{-1} \@cnTitle}
		\par\noindent{\kaishu\zihao{-3} \@cnAuthor}
		\par\noindent{\songti\zihao{-4} \@cnAuthorUnit}
		\vspace*{2em}
		\par\noindent{\heiti\zihao{-1} \@enTitle}
		\par\noindent{\kaishu\zihao{-3} \@enAuthor}
		\par\noindent{\songti\zihao{-4} \@enAuthorUnit}
	\end{oneCol}
  	\baselineskip=20pt  % 正文行间距为 20 磅
}

%%% 文末作者简介
\def\makeDescription
{
	\vspace*{2em}
	\noindent\rule{.25\textwidth}{.5pt}  % 分隔线
	\vspace*{1em}

	\zihao{-4}  % 小四号
	{\noindent \heiti 第一作者简介：} {\songti \@firstAuthorDescriptionCn}
	
	{\noindent \textbf{First Author: }} {\@firstAuthorDescriptionEn}
	
	{\noindent \textbf{E-mail: }} {\@firstAuthorEmail}
	
	{\noindent \heiti 通信作者：} {\songti \@correspondingAuthorCn}
	
	{\noindent \textbf{Corresponding author: }} {\@correspondingAuthorEn}
	
	{\noindent \textbf{E-mail: }} {\@correspondingAuthorEmail}
}

\makeatother   % 使@失效