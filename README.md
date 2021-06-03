# **<p align="center">Pewlett-Hackard Analysis</p>**

### **<p align="center">A SQL-powered analytics report designed to display metrics on eminent retirees in the Pewlett Hackard workforce.</p>**

---
## Overview
This report will enumerate the current retirment-age employees at Pewlett Hackerd on a per department basis and identify employees who are eligible for a Mentorship Program based on a 1965 birthdate. The business impact of the "silver tsunami" will be provided in the summary section, along with pertinent query suggestions for additional analysis.

---
## **<p align="center">Retirement-Age Employees per Department</p>**
---

<p align="center">
   <img width="500" height="180" src="https://github.com/Jamesrx33/Pewlett-Hackard-Analysis/blob/main/Visuals/Retirement_By_Dept.png?raw=true">
</p>

1. **Volume of Rides:** The amount of rides by city type increases as you approach more populated areas.
2. **Number of Drivers:** The number of available drivers also increases as the city type approaches Urban.
   >As a result of an increased availability of drivers and greater volume of rides, Urban cities total more than 200% of the Total Suburban city Fare Revenue and 900% of the Total Rural city Fare Revenue.
3. **Average Fare Costs:** Rural and Suburban cities garner significantly more Fare Revenue per ride and per driver than Urban Cities.

---
## **<p align="center">Eligible Mentorship Employees</p>**

### **<p align="center"> [Link to Mentorship Table](https://github.com/Jamesrx33/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv) </p>**

---

**<p align="center">Urban cities garner significantly more total Fare Revenue than other city types</p>**
  > (Urban: Yellow, Suburban: Red, Rural: Blue)
   
<p align="center">
   <img width="1100" height="300" src="https://github.com/Jamesrx33/pyber-analysis/blob/main/analysis/PyBer_fare_summary.png?raw=true">
</p>

---
## Summary
---

The total Fare Revenue is greatest from Urban cities, however, Suburban and Rural cities garner a greater per-ride and per-driver fare. In order to increase overall Fare Revnue, i would suggest the following:

1. Hire additonal drivers for Rural and Suburban cities.
2. Increase the Fare cost in Urban and Suburban cities to reflect the respective demand based on total rides.
3. Reduce the number of drivers for Urban cities, as there is a surplus of drivers-to-rides.

---

## Reference Documentation - [Source Code Repository](https://github.com/Jamesrx33/pyber-analysis), [Download .zip file](https://github.com/Jamesrx33/pyber-analysis/archive/refs/heads/main.zip)
