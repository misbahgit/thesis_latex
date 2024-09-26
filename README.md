# AMU Thesis LaTeX Template

## Overview

This LaTeX template has been designed specifically for students at Aligarh Muslim University (AMU) to help in writing and formatting their theses in compliance with university requirements. The template is streamlined to minimize effort in formatting while focusing on content creation.

### Key Features:
- Fully automated title page, declaration, certificate, and acknowledgments sections.
- Predefined styles for chapters, sections, subsections, figures, and tables.
- Simple customization through a single `variables.tex` file.
- Includes bibliography management with BibTeX or manual entries.

## Getting Started

To use this template, follow the steps below.

### 1. Download the Template

Start by downloading the LaTeX thesis template package. The template includes all the necessary files for structuring and formatting your thesis.

### 2. Files and Directory Structure

The package includes the following files and directories:
- /YourThesisProject │ ├── main.tex % Main file to compile your thesis
- ├── thesis.cls % The class file that handles formatting
- ├── variables.tex % File to input personal and thesis details
- ├── chapters/ % Directory for your thesis chapters
- │ ├── chapter1.tex % Example chapter
- │ ├── chapter2.tex │
- └── ...
- ├── appendices/ % Directory for appendices (optional)
- ├── bibliography.bib % BibTeX file for references (optional)
- ├── Pictures/ % Directory to store all figures and images
- │ └── figure1.png └── howtouse.md % This instruction file

### 3. Editing the Variables File

To personalize the thesis, you only need to modify the `variables.tex` file. This file contains all the variables like your name, thesis title, supervisor's name, and other necessary information.

Open `variables.tex` and fill in the required fields as shown below:

```latex
% variables.tex

% General Information
\def\thesistitle{Your Thesis Title}
\def\authorname{Your Full Name}
\def\regno{Your Registration Number}
\def\degree{Degree Name (e.g., PhD, MPhil)}
\def\deptname{Your Department}
\def\univname{Aligarh Muslim University}
\def\submissiondate{Month, Year}

% Supervisor Details
\def\supnameA{Dr. Supervisor's Name}
\def\supdeptA{Department of Supervisor}
\def\supunivA{Aligarh Muslim University}
Note: You do not need to modify any other files for basic use. The thesis.cls file will automatically format the content based on the variables you define.
%
### 4. Writing the Chapters
The chapters/ directory contains separate files for each chapter of your thesis. You can edit these files to add your content. Each chapter file starts with the \chapter{} command.

For example, to start writing Chapter 1:
% chapter1.tex

\chapter{Introduction}
This is where the content of your first chapter goes...
You can create as many chapter files as necessary and then include them in the main thesis.tex file.

### 5. Inserting Figures and Tables
Figures: Store your figures and images in the Pictures/ directory. You can insert them into your thesis using the \includegraphics{} command. Example:
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.7\textwidth]{Pictures/figure1.png}
    \caption{Sample figure.}
    \label{fig:sample-figure}
\end{figure}
Tables: Insert tables in LaTeX using standard table environments. Example:
\begin{table}[htbp]
    \centering
    \begin{tabular}{|c|c|c|}
        \hline
        Column 1 & Column 2 & Column 3 \\
        \hline
        Data 1   & Data 2   & Data 3 \\
        \hline
    \end{tabular}
    \caption{Sample table.}
    \label{tab:sample-table}
\end{table}
### 6. Bibliography
If using BibTeX for references, add your references to the bibliography.bib file in standard BibTeX format. Your references will be automatically formatted and included in the bibliography section.

Example of a BibTeX entry:
@article{sample2023,
    author = {Author Name},
    title = {Article Title},
    journal = {Journal Name},
    year = {2023},
    volume = {12},
    pages = {34-56}
}
Alternatively, you can manually create a bibliography section in LaTeX using \bibitem.

### 7. Compiling the Document
Once you've added your content and made necessary changes to variables.tex, compile the main file thesis.tex. You can use any LaTeX editor (such as TeXShop, TeXworks, or Overleaf) or the command line.

To compile the document, use the following commands:
pdflatex thesis.tex
bibtex thesis
pdflatex thesis.tex
pdflatex thesis.tex
This will generate the final PDF version of your thesis, complete with a table of contents, lists of figures and tables, and the bibliography.

### 8. Common Sections to Edit
The template includes predefined sections for the title page, declaration, and certificate. These sections are automatically filled in based on the information you provide in variables.tex.

Title Page: The title page is generated automatically using the variables from variables.tex. No additional input is required.

Acknowledgment: To add your acknowledgments, modify the acknowledgments environment in thesis.tex:
\begin{acknowledgements}
    I would like to thank my supervisor, Dr. XYZ, for their guidance...
\end{acknowledgements}
Declaration and Certificates: These sections are preformatted. You can modify their content in thesis.tex if needed.

### 9. Inserting Appendices
If your thesis contains appendices, place them in the appendices/ directory. Add them to thesis.tex using the following structure:
\appendix
\include{appendices/appendix1}
\include{appendices/appendix2}
Each appendix file should start with a \chapter{} command:

% appendix1.tex

\chapter{Appendix Title}
This appendix covers additional material...
10. Customizing Further
For most cases, no further customization is necessary. However, if you want to modify formatting, margins, line spacing, or fonts, you can edit the thesis.cls file. This file controls the formatting but is already set up to follow the thesis guidelines of AMU, so changes should be made carefully.

Conclusion
This LaTeX thesis template is designed to simplify the process of thesis writing at AMU by handling the formatting and structure automatically. By filling in the variables.tex file and writing content in the chapter files, you can efficiently generate a well-formatted thesis. If you have questions or need further assistance, feel free to explore the LaTeX documentation or consult your supervisor.

This markdown document is ready to be used in a GitHub `README.md` file for the AMU LaTeX thesis template.
