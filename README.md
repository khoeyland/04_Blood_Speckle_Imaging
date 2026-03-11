# Project on Blood Speckle Imaging (BSI) at NTNU, Trondheim

## Project Description

This project is part of an echocardiography study where a research cohort woth aortic stenosis patients and healthy controls have been followed over time, with the aim of finding an ultrasound marker for myocardial fibrosis. An echocardiography protocol including High Frane Rate (HFR) ultrasound has been used for this purpuse, focusing mainly on the myocardial tissue. Additional high fram rate color doppler echocardiography cine loops with focus on the blood pool (left ventricle and left atrium), and with raw data on IQ level (RF) have been secured in a selection of study participants with adequate acoustic window. This part of the echocardiography study protocol is the basis for the project covered in this repository. Using higher than conventional frame rates for color doppler acquisitions, allows for blood speckle imgaing (BSI).


## Installation

Clone the repository by git clone https://github.com/khoeyland/04_Blood_Speckle_Imaging.git


## Usage - Blood Speckle Imaging echcoardiography protocol

Blood speckle imaging echocardiography loops are acquired at the end of a comprehensive high frame rate echocardiography protocol - on eligible study participants that also could endure some extra 15-20 minutes on the echo bench.

A Scan Assist Pro protocol (GE software) has been used to aid in correct echo loop acquisitions during scanning, and to optimize data structure for post processing. With the software Scan Assist Pro Creator, files with extension .uep can be opened in this program, and the echo protool will be shown, as it also will have appeared step by step during the ultrasound scanning.

Both information on Scan Assist Pro Creator, and the latest version of Scan Assist Pro protocol, are located in the documentation folder in this repository. The BSI part of the echo study protocol starts - in the latest version (24) - from step 165 and goes to the end of the echo protocol (step 199).

The documentation folder has a subfolder named "archive" where older versions of the Scan Assist Pro protocol used in this poject, are archived. This is for reference, in the rare case it can somehow add structure for the post-processing steps, and for keeping the history of the project. The number of versions reflect technical challanges during the project. Changes from one version to the next tend to not be big, but from version 15 there was a major change, wherein the alignment of 2D B-mode hfr, tdi and tdi-iq hfr imaging was ordered in a moret efficient and logical way - to make sure each projection did not have to be acquired several times. All images ideally should also be made with the same probe positioning, and this was the main argument for the shift of protocol layout. 



## Folder tree structure of this repository

```
04_Blood_Speckle_Imaging/
├── .gitignore
├── R/
│   └── 01_read_data.R
├── README.md
├── data/
│   └── 2026-03-08_BSI-and-TDI_SAS-F-5.xlsx
├── documentation/
│   ├── 2026-02-24_HFR-protocol_Full.uep
│   ├── Vivid S70 204 Scan Assist Pro Creator.pdf
│   └── archive/
│       └── 2025-12-12_HFR-protocol_Full.uep
├── manuscript/
│   ├── main.tex
│   └── sections/
│       ├── introduction.tex
│       └── methods.tex
└── output/
    ├── figures/
    │   └── fig1.pdf
    └── tables/
        └── table1.tex
```

## Data structure and history after transfer of echo data from the research echo scanner

All echocardiography studies in this research study, have been exported to external hard drive as DICOM USB Harrdisk/Memstick(...). From 14.03.2025 (study ID 23934) 2025, all echo studies have also been exported as USB Harddisk/Memstick(...).

From 12.12.2025 (study ID 28619) and onwards, echocardiography studies have in addition been exported from the scanner in such a way that each study have their own separate dicomdir file, and each of these studies have then been arranged in the following manner:

```
Study-ID 1/
    ├── GEMS_IMG/
    ├── DICOMDIR
Study-ID 2/
    ├── GEMS_IMG/
    ├── DICOMDIR
Study-ID 3/
    ├── GEMS_IMG/
    └── DICOMDIR
```

There are also a few research echo study from before 12.12.2025 that has been exported from the E95 scanner in such a way that a separate dicom dir file was secured for the study. These were echo studies that had still not been deleted from the echo scanner at that point, and a repeat export could then be done. These echo studies are study IDs 2213 (18.11.2025) and 27190 (28.07.2025).

For all the other echo studies in the project that do not have been exported in such a way that a separate dicomdir file for each study was created, Solveig Fadnes helped me on 28.11.2025 to have these echo studies undergo a Python script, in order to be able to separate different components of the echo studies from one another. This Python script did not fully complete, but I understand that most of the studies were dealth with. The output from this Python script was stored on a external hard drive borrowed from Lasse, in a folder named: To Hang Jung

13.01.2026: Echocardiography studies distributed on external hard drive.<br>
Study ID 28619, 30404, 83354, 41830, 49675.<br> 
<img src="documentation/images/2026-01-13_Echo-data_SAS-F-5.jpg" width="30%" />
<br>
<br>
11.03.2026: Echocardiography studies distributed on external hard drive.<br> 
Study ID 94360, 29408, 51844, 600, 97363, 55916, 11360, 127, 52979, 92849, 42379.<br>
<img src="documentation/images/2026-03-10_Echo-data_SAS-F-5.jpg" width="30%" />


## Intitial data exploration

Study_IDs for echcoardiography studies with best quality from initial judgement during scanning and data cleaning: 
30404, 83354, 41820, 49675, 51844, 600, 55916, 127, 52979, 92849, 2213, 77705, 27190, 11360, and 42379.

## Contribution

I am very grateful for invaluable engineering support from Hang Jung Ling ( @HangJung97 ), Lasse Løvstakken, and Solveig Fadnes in this project.

Pull requests are welcomed. One can open an Issue or use Discussion for issues or discussions regarding the project.


