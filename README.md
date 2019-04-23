# River Thames
The repositories purpose is:
1) introduce the River Thames, the 2014 Winter Floods and MATH3001; and,
2) document progress [1, pp. 5-6].

## 1. Introduction

At the University of Leeds, MATH3001 is a third year Mathematics module that allows students to explore mathematics/applications of mathematics in more depth [2]. Essentially, MATH3001 is a research module that aims to expand a student's skills in team work, research, and report writing [2]. The research that is being conducted in this repository regards the mitigation of flooding in the Lower Thames region and it is supervised by Onno Bokhove and Thomas Kent. In this repository, one shall:

1) analyse (river-gauge) data of the River Thames;
2) calculate the flood-excess volume (FEV);
3) assess proposed mitigation projects and plot a graph on the cost-effectiveness of each project (in relation to FEV); and,
4) present the findings in this repository [1, pp. 5-6].

## 2. Project Progress

With regards to the flood data, the Environment Agency has been contacted, and they have provided data on the River Thames flooding that occured in 2014 [3]. The Met Office has also been contacted about the rainfall surrounding the flood and they responded with an Excel sheet of data [4]. The Met Office data cannot be shared as I am not licensed to share. 

### 2.1 Methodology

The Enivronmental Angencies dataset will be used to create a quadrant plot (a graph split into quadrants; Discharge versus Height, Day versus Discharge, Height versus Day, and an empty plot) and some hydrographs. The Met Office data  will only be used for the hydrograph. Typically, a hydrograph allows one to compare rainfall and the height of a river - although, I have also produced a plot that compares the rainfall and discharge rate [5, p.2].

### 2.1.1 Raw Data & Formatting

The raw data has been received and it has been analysed. It is listed in the repository as Windsor 2700TH flow and stage data 2013-14.xlsx. The date and time data was edited, and formatted numerically.

### 2.1.2 Graphs

This section shows the progression to my final graph.

The River Thames 2013-2014 flood: 33 days plot (file listed as Provisional Windsor plot).

<p float="left">
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesProvisionalWindsorPlot.png" width="283" />
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesAlternativeWindsorPlot.png" width="283" /> 
  <img src="https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/SophiesUpdate.png" width="283" />
  </p>

The River Thames 2013-2014 flood: 39 days plot (file listed as Alternative Windsor plot).

The 39 day plot allows me to find Tf easier, however the rating curve and Day vs. Stage seem to be negatively effected by the inclusion of more data points - the only thing that was changed in my code for each plot was the maximum day value (used to scale the data). I changed the scaling for the discharge data and received the following plot.

Updated 39 day plot (file listed as Sophies Update; code used is the Alternative Windsor plot, which has been updated)

I am dyslexic and it was discovered that I had a 'dyslexic moment'. The error seen in the Updated 39 day plot is due to human error; I typed the wrong coefficent into the code by accident.

11th March: 39 day plot

![Datchet14](https://github.com/Rivers-Project-2018/Sophie-River-Thames/blob/master/Datchet14.png)

The discovery of the expression function allowed me to code subscript into R.

### 2.1.3 Code

The programming language is R and it is listed in the repository file directory.

## 3. Discussion 


## 4. References

### 4.1 References in code used for figures in report.

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

### 4.2 References for README.

1. Bokhove, O., and Kent, T. *MATH3001 Project Description: Assessing and communicating mitigation of river floods to policy makers & the general public*. Unpublished, [2018].

2. The University of Leeds. 2018. *2018/19 Undergraduate Module Catalogue: MATH3001 Project in Mathematics* [Online]. [Accessed c. 18 September 2018]. Available from: http://webprod3.leeds.ac.uk/

3. Environment Agency. *Windsor 2700TH flow and stage data 2013-14*. Unpublished, [no date].

4. Met Office. *Windsor Royal Gardens Daily 1 1 2014-28 2 2014*. Unpublished, [no date].

5. BBC Bitesize. c.2018. *River Management*. [Online]. [Accessed 20 November 2018]. Available from: https://www.bbc.com/
