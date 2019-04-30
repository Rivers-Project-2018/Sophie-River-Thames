# River Thames
<p align="center">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/IMG_4629.JPG" width="650" />
  </p>
  
> **Figure 1:** Foreground: River Thames; Background: The Houses of Parliament [1]. **Note:** The London section of the Thames will not be discussed in this repository, the Lower Thames region will. This photo is for context.

## 1. Introduction

At the University of Leeds, MATH3001 is a third year Mathematics module that allows students to explore mathematics/applications of mathematics in more depth [2]. Essentially, MATH3001 is a research module that aims to expand a student's skills in team work, research, and report writing [2]. The research that is being conducted in this repository regards the mitigation of flooding in the Lower Thames region, specifically the town of Datchet, and it is supervised by Onno Bokhove and Thomas Kent. In this repository, one shall:

1) introduce the River Thames, the 2014 Winter Floods and MATH3001;
2) analyse (river-gauge) data of the River Thames;
3) calculate the flood-excess volume (FEV);
4) assess proposed mitigation projects and plot a graph on the cost-effectiveness of each project (in relation to FEV); and,
5) present the findings in this repository [3, pp. 5-6].

Before you continue to read the following I suggest reading the Introduction to FEV section of the Group Project repository: https://github.com/Rivers-Project-2018/Group-Project.

## 2. Project Progress

With regards to the flood data, the Environment Agency has been contacted, and they have provided data on the River Thames flooding that occured in 2014 [4]. The Met Office has also been contacted about the rainfall surrounding the flood and they responded with an Excel sheet of data [5]. The Met Office data cannot be shared as I am not licensed to share. 

### 2.1 Methodology

The Enivronmental Angencies dataset will be used to create a quadrant plot (a graph split into quadrants; Discharge versus Height, Day versus Discharge, Height versus Day, and an empty plot) and some hydrographs. The Met Office data  will only be used for the hydrograph. Typically, a hydrograph allows one to compare rainfall and the height of a river - although, I have also produced a plot that compares the rainfall and discharge rate [6, p.2].

### 2.1.1 Raw Data & Formatting

The raw data has been received and it has been analysed. It is listed in the repository as Windsor 2700TH flow and stage data 2013-14.xlsx. The date and time data was edited, and formatted numerically.

### 2.1.2 Graphs

#### The Quadrant Plots

<p align="center">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/FinWin.png" width="650" />
  </p>
  
> **Figure 2:** My final quadrant graph

The graphs were created with the programming language is R. The code for figure 2 is listed in the repository file directory under the title WINDSOR_PLOT.R [4]. More detail on creating the graphs is given in the following repository: https://github.com/Rivers-Project-2018/How-to-do-FEV-Analysis.

**The progression to the final graph.**

Before attaining the data for Windsor, my group and I recreated graphs first produced by our supervisors. Some early drafts of these recreations will be placed in this section along with early drafts of the Windsor graph.

<p float="left">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/Sophie’s River Aire Plot Recreation.png" width="286" />
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesCalderRecreation.png" width="278" />
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/Sophie’s adapted River Don plot.png" width="286" />
  </p>

> **Figure 3: (left)** An early River Aire graph recreation [7]. **(centre)** An early River Calder graph recreation [7]. **(right)** An even earlier recreation of the River Don graph [8, p.9]. All graphs in figure 3 were created before I could code subscript. 

<p float="left">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesProvisionalWindsorPlot.png" width="283" />
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesAlternativeWindsorPlot.png" width="283" /> 
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesUpdate.png" width="283" />
  </p>

> **Figure 4: (left)** the River Thames 2013-2014 flood: 33 days plot (file listed as Provisional Windsor plot); **(centre)** the River Thames 2013-2014 flood: 39 days plot (file listed as Alternative Windsor plot); **(right)** updated 39 day plot (file listed as Sophies Update; code used is the Alternative Windsor plot, which has been updated).

The reason for the using more data/increasing the number of days was to allow me to find T<sub>f</sub> easier. When this change was initiallly computed the rating curve and Day vs. Stage were negatively effected by the inclusion of more data points. The only thing that was changed in my code for each plot was the maximum day value (used to scale the data). I changed the scaling for the discharge data and received the centre plot. I am dyslexic and it was discovered that I had a 'dyslexic moment'. The error seen in the centre plot of figure 4 is due to human error; I typed the wrong coefficent into the code by accident. Once the accident was rectified the plot on the right was achieved. The error seen in this graph was also human error - when editing the day data I made a mistake.

<p align="center">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/Datchet14.png" width="650" />
  </p>

> **Figure 5:** 39 day plot (11 Mar 2019). The almost complete version - before the move of the rating curve. The discovery of the expression function allowed me to code subscript into R [9].

#### The Hydrographs

<p float="left">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/FinHydWin1.png" width="425" />
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/FinHydWin2.png" width="425" /> 
  </p>

> **Figure 6:** each illustrate the River Thames response to heavy rainfall [6, p.2]. These will be helpful when discussing the opening the flood gates proposed in the River Thames Scheme. The code for these graphs are listed as Hydrograph_1.R and Hydrograph_2.R respectively. It seems that the River Thames responds to heavy rainfall within 2-10 days.

## 3. Mitigation projects

There are two planned projects:

1) the River Thames Scheme; and,
2) the River Basin Management Plan.

### 3.1 River Thames Scheme

The scheme is a mitigation project concerning the construction of multiple, gated flood channels [10, p.3]. The gates remain closed until a threat of flooding arises; additionally, the channels will constantly be 7/8 full until the gates are opened [11, p.16]. 

<p align="center">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/Sophies mitigation plot  for DatchetWindsor.png" width="650" /> 
  </p>
  
> **Figure 7:** my final mitigation plot for Datchet/Windsor; by my calculation, only a small amount of mitigation occurs. £239.1 million from: [10, p.32]. £588 million from: [12]. The code for this plot is given in the file directory under the name WinMit.R. Mitigation values are calculated to 2 decimal places.

The 0.28 and 0.51 mitigation levels imply that the 2014 Datchet flood would have FEV values of 27.72Mm<sup>3</sup> and 27.49Mm<sup>3</sup> respectively with the channels in place. Therefore, the flooding would have been on a slightly smaller scale, but not by much. The 0.28 value was approximated by calculating the volume of flood water taken by the Datchet channel and dividing it by a million. This value is only an approximation as the Dacthet channel's length does not seem to be stated in any report. The 0.51 was created by a similar approach - the volume of flood water held by all planned channels and divide that by a million. Despite the low mitigation levels expected from creating the channels, I have been reassured that this project is the best option for the Lower Thames region [14]. If you wish to calculate the volumes yourself a table has been placed below with all the information required.
  
  | Volume factors |    Datchet Channel   |    All Channels     |
  | -------------- | -------------------- | ------------------- |
  | Length         | ≈ 9334.2m [13]       | 17000m [10, p.3]    |
  | Width          | 60m       [10, p.3]  | 60m    [10, p.3]    |
  | Depth          | 0.5m      [11, p.16] | 0.5m   [11, p.16]   |
  
> **Table 1:** there was a range of 50-70m for the width of the channels, thus 60m was chosen [10, p.3][11, p.16].

If the Environment Agency decided to expand or reduce the width of the channels to 70m or 50m the FEV would change. Figure 8 displays these changes. 

<p align="center">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/FEV mitigation_Consideration of multiple widths.png" width="650" /> 
  </p>
  
> **Figure 8:** the code for this graph is Mit.R and the code has references listed in 5.3. The best mitigation value, ≈0.6Mm<sup>3</sup>, is viable if all channels are open and of width 70m. This 0.6 mitigation would have reduce the 2014 Datchet flood FEV value to 27.4Mm<sup>3</sup> with the channels in place.

<p align="center">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/70mWideMitLake.png" width="650" /> 
  </p>
  
> **Figure 9:** The cost-effectiveness of a 70 metre wide channel. The code is listed under 70mMitLake.R.
  
Minor changes in river height and discharge occur 2 days after the major rainfall, however the height and discharge dramatically increase if the rainfall continues. Since the reduction of flood-excess volume is low regardless of the width of the channels, I would recommend opening the flood gates as soon as a flood risk arises.

### 3.2 River Basin Management Plan

In contrast to the River Thames Scheme, which aims to mitigate flooding, the plan seems to centre on reducing Datchet's susceptibility to flooding by making the town more water absorbent [10, p.1][15, p.79]. The mitigation levels of this plan could not be calculated due to a lack of information.

## 4. Discussion 

The 2014 flooding in Datchet was large, as was the flood-excess volume. The River Thames Scheme will help reduce the FEV of future floods, but not by much.


## 5. References

### 5.1 References in code used for figures in report.

1. Bokhove, O., Kelmanson, M.A., Kent, T., Piton, G. and Tacnet, J.M. *Using ‘flood-excess volume’ to assess and communicate flood-mitigation schemes*. [Online poster]. 2018. [Accessed 4 November 2018]. Available from: http://www1.maths.leeds.ac.uk/

2. Bokhove,O. *Armley F1707 Flow 15min May 15 to Mar 16.csv*. [Online]. 2018. [Accessed 8 October 2018]. Available from: https://github.com/obokhove/RiverAireDonCalder

3. Bokhove,O. *Armley F1707 Stage 15min May 15 to Mar 16.csv*. [Online]. 2018. [Accessed 8 October 2018]. Available from: https://github.com/obokhove/RiverAireDonCalder

4. Bokhove,O. *Rating Curves.xlsx*. [Online]. 2018. [Accessed 8 October 2018]. Available from: https://github.com/obokhove/RiverAireDonCalder

5. Kent, T. *Conversation with Sophie Kennett, Abbey Chapman, Jack Willis, Mary Saunders, and Antonia Feilden*, 12 November, 2018.

6. DataCamp. 2015. *R tutorial - Learn How to Create and Name Matrices in R*. 
[Online]. [Accessed November 2018]. Available from: https://www.youtube.com/

7. Verzani, J. *Using R for introductory Statistics*. 2nd ed. Boca Raton: CRC Press, Taylor \& Francis Group, 2014.

8. Kent, T. *Conversation with Sophie Kennett*, 12 March, 2019.

9. Kent, T. *Conversation with Sophie Kennett, Abbey Chapman, Jack Willis, Mary Saunders, and Antonia Feilden*, 12 October, 2018.

10. Saunders, M, and Chapman, A. *Conversation with Sophie Kennett, Abbey Chapman, Jack Willis, Mary Saunders, and Antonia Feilden*, c. 6 November, 2018.

11. Saunders, M. *Conversation with Sophie Kennett*, c. 27 November, 2018.

12. Lillis, D.A. *R Graphic Essentials*. Birmingham: Packt Publishing, 2014.

13. Murrell, P. *R Graphics*. [Online]. 2nd ed. Boca Roca: CRC Press, Taylor \& Francis Inc, 2016. [Accessed 30 October 2018]. Available from: https://books.google.co.uk/

14. StackOverflow. *Plot text containing ”approximately equal to” in R*. [Online]. [no date]. [Accessed 9 March 2019]. Available from: https://stackoverflow.com/

15. AstroStatistics. *Mathematical Annotation in R*. [Online]. [no date]. [Accessed 9 March 2019]. Available from: http://astrostatistics.psu.edu/su07/R/html/grDevices/html/plotmath.html

16. Bokhove,O. *Mytholmroyd F1204 Flow 15 min May 15 to Mar 16.csv*. [Online]. 2018. [Accessed 8 October 2018]. Available from: https://github.com/obokhove/RiverAireDonCalder

17. Bokhove,O. *Mytholmroyd F1204 Stage 15 min May 15 to Mar 16.csv*. [Online]. 2018. [Accessed 8 October 2018]. Available from: https://github.com/obokhove/RiverAireDonCalder

18. Bokhove, O., Kelmanson, M.A., Kent, T., Piton, G. and Tacnet, J.M. [Pre- print]. Communicating nature-based solutions using flood-excess volume, for three extreme UK and French river floods. *The Royal Society Publishing*. 2018.

19. Bokhove,O. *Sheffield Hadfields Stage 15 min Jan 07 to Dec 07.csv*. [Online]. 2018. [Accessed 8 October 2018]. Available from: https://github.com/obokhove/RiverAireDonCalder

20. Bokhove,O. *Sheffield Hadfields Flow 15 min Jan 07 to Dec 07.csv*. [Online]. 2018. [Accessed 8 October 2018]. Available from: https://github.com/obokhove/RiverAireDonCalder

21. Environment Agency. *Windsor 2700TH flow and stage data 2013-14*. Unpublished, [no date].

22. GaugeMap. *Windsor Park: (Thames)*. [Online]. [no date]. [Accessed 6 November 2018]. Available from: https://www.gaugemap.co.uk/

23. Environment Agency Thames Region. *Lower Thames Flood Risk Management Strategy*. [Online]. 7th ed. [no place]: Environment Agency, 2010. [Accessed 6 November 2018]. Available from: http://www.gov.uk/

24. Winfield, P. *Email to Sophie Kennett*, 14 February, 2019.

25. Met Office. *Windsor Royal Gardens Daily 1 1 2014-28 2 2014*. Unpublished, [no date].

26. Statistical tools for high-throughput data analysis. *Add legends to plots in R software : the easiest way!* [Online]. [no date]. [Accessed 1 March 2019]. Available from:http://www.sthda.com/

### 5.2 References for README.

1. Kennett, S. *Thames*. [Photograph]. 2014.

2. The University of Leeds. 2018. *2018/19 Undergraduate Module Catalogue: MATH3001 Project in Mathematics* [Online]. [Accessed c. 18 September 2018]. Available from: http://webprod3.leeds.ac.uk/ 

3. Bokhove, O., and Kent, T. *MATH3001 Project Description: Assessing and communicating mitigation of river floods to policy makers & the general public*. Unpublished, [2018].

4. Environment Agency. *Windsor 2700TH flow and stage data 2013-14*. Unpublished, [no date].

5. Met Office. *Windsor Royal Gardens Daily 1 1 2014-28 2 2014*. Unpublished, [no date].

6. BBC Bitesize. c.2018. *River Management*. [Online]. [Accessed 20 November 2018]. Available from: https://www.bbc.com/

7. Bokhove, O., Kelmanson, M.A., Kent, T., Piton, G. and Tacnet, J.M. *Using ‘flood-excess volume’ to assess and communicate flood-mitigation schemes*. [Online poster]. 2018. [Accessed 4 November 2018]. Available from: http://www1.maths.leeds.ac.uk/

8. Bokhove, O., Kelmanson, M.A., Kent, T., Piton, G. and Tacnet, J.M. [Pre- print]. Communicating nature-based solutions using flood-excess volume, for three extreme UK and French river floods. *The Royal Society Publishing*. 2018.

9. StackOverflow. *Plot text containing ”approximately equal to” in R*. [Online]. [no date]. [Accessed 9 March 2019]. Available from: https://stackoverflow.com/

10. Environment Agency Thames Region. *Lower Thames Flood Risk Management Strategy*. [Online]. 7th ed. [no place]: Environment Agency, 2010. [Accessed 6 November 2018]. Available from: http://www.gov.uk/

11. Environment Agency. *Lower Thames Flood Risk Management Strategy*. [Online]. Frimley: Environment Agency, 2009. [Accessed 22 November 2018]. Available from: http://www.mycouncil.surreycc.gov.uk/

12. Environment Agency. *River Thames Scheme: reducing flood risk from Datchet to Teddington*. [Online]. 2018. [Accessed 6 November 2018]. Available from: http://www.gov.uk/

13. Google. *Datchet to Egham*. [Online]. [no date]. [Accessed 15 March 2019]. Available from: https://www.google.com/maps/

14. Gumbrell, K. *Email to Sophie Kennett*, 7 March, 2019.

15. Department of Environment, Food, and Rural Affairs, and Environment Agency. *Part 1: Thames river basin district. River basin management plan*. [Online]. 2nd ed. Bristol: Horizon House, 2015. [Accessed 26 November 2018]. Available from: https://assets.publishing.service.gov.uk/

### 5.3 References in Mit.R code and 70mMitLake.R (for README figure 8 and 9).

1. Lillis, D.A. *R Graphic Essentials*. Birmingham: Packt Publishing, 2014.

2. Verzani, J. *Using R for introductory Statistics*. 2nd ed. Boca Raton: CRC Press, Taylor \& Francis Group, 2014.

3. Saunders, M, and Chapman, A. *Conversation with Sophie Kennett, Abbey Chapman, Jack Willis, Mary Saunders, and Antonia Feilden*, c. 6 November, 2018.

4. Saunders, M. *Conversation with Sophie Kennett*, c. 27 November, 2018.

5. Statistical tools for high-throughput data analysis. *Add legends to plots in R software : the easiest way!* [Online]. [no date]. [Accessed 1 March 2019]. Available from:http://www.sthda.com/

6. StackOverflow. *Plot text containing ”approximately equal to” in R*. [Online]. [no date]. [Accessed 9 March 2019]. Available from: https://stackoverflow.com/

7. AstroStatistics. *Mathematical Annotation in R*. [Online]. [no date]. [Accessed 9 March 2019]. Available from: http://astrostatistics.psu.edu/su07/R/html/grDevices/html/plotmath.html
