# River Thames
The repositories purpose is:
1) Introduce the River Thames, the 2014 Winter Floods and MATH3001
2) Document progress

## 1. Introduction

At the University of Leeds, MATH3001 is a third year Mathematics module that allows students to explore mathematics/applications of mathematics in more depth. Essentially, MATH3001 is a research module that aims to expand a student's skills in team work, research, and report writing. The research that is being conducted in this repository regards the mitigation of flooding in the Lower Thames region and it is supervised by Onno Bokhove and Thomas Kent. In this repository, one shall:

1) Analyse (river-gauge) data of the River Thames;
2) Calculate the flood-excess volume (FEV);
3) Assess proposed mitigation projects and plot a graph on the cost-effectiveness of each project (in relation to FEV)
4) Present the findings in this repository.

## 2. Project Progress

With regards to the flood data, the Environment Agency has been contacted, but no data has been provided yet. The Met Office has also been contacted about the rainfall surrounding the flood and they responded with an Excel sheet of data.

### 2.1 Methodology



### 2.1.1 Raw Data & Formatting

The raw data has been received and is currently being analysed.

### 2.1.2 Graphs

This section shows the progression to my final graph. The first two graphs 

The River Thames 2013-2014 flood: 33 days plot (file listed as Provisional Windsor plot).

![SophiesProvisionalWindsorPlot](https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesProvisionalWindsorPlot.png)

The River Thames 2013-2014 flood: 39 days plot (file listed as Alternative Windsor plot).

![SophiesAlternativeWindsorPlot](https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesAlternativeWindsorPlot.png)

The 39 day plot allows me to find Tf easier, however the rating curve and Day vs. Stage seem to be negatively effected by the inclusion of more data points - the only thing that was changed in my code for each plot was the maximum day value (used to scale the data). I changed the scaling for the discharge data and received the following plot.

Updated 39 day plot (file listed as Sophies Update; code used is the Alternative Windsor plot, which has been updated)

![SophiesUpdate](https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesUpdate.png)

I am dyslexic and it was discovered that I had a 'dyslexic moment'. The error seen in the Updated 39 day plot is due to human error; I typed the wrong coefficent into the code by accident.

11th March: 39 day plot

![Datchet14](https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/Datchet14.png)

The discovery of the expression function allowed me to code subscript into R.

### 2.1.3 Code

The programming language is R. 

## 3. Discussion 


## 4. References
