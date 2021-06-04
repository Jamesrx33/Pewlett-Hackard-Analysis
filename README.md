# **<p align="center">Pewlett-Hackard Analysis</p>**

### **<p align="center">A SQL-powered analytics report designed to display metrics on eminent retirees in the Pewlett Hackard workforce.</p>**

---
## Overview
This report will enumerate the current retirment-age employees at Pewlett Hackerd by title and identify employees who are eligible for a Mentorship Program based on a 1965 birthdate. The results of our analysis are displayed below and a Summary statement addresses the busines impact of the "silver tsunami." Finally, additional query suggestions are provided for further pertinent analysis.

---
## **<p align="center">Results - Retirement Age Employees by Title</p>**
---

<p align="center">
   <img width="500" height="250" src="https://github.com/Jamesrx33/Pewlett-Hackard-Analysis/blob/main/Visuals/Retirement_By_Title.png?raw=true">
</p>

1. **Overall Impacts:** There are 90,398 employees soon to retire.
2. **Leadership Deficit:** 68.8% of these retirees are in a leadership position (Senior Engineer, Senior Staff, Technique Leader, Maanger)
3. **Management Deficit:** Two of the nine Department Managers at Pewlett Hackard are soon to retire.

---
## **<p align="center">Results - Eligible Mentorship Employees</p>**

### **<p align="center"> [Link to Complete Mentorship Table](https://github.com/Jamesrx33/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv) </p>**

<p align="center">
   <img width="800" height="400" src="https://github.com/Jamesrx33/Pewlett-Hackard-Analysis/blob/main/Visuals/Mentorship_Eligible_Table.png?raw=true">
</p>

---

1. **Number of Eligible Employees:** There are 1,549 (1,550 Minus Header Row) employees born in 1965 that would be suitable for a mentorship program.
2. **Majority Title:** The majority of these eligible employees have the "Senior Staff" or "Engineer" title.

---
## Summary
---

1. **Roles that need to be filled:** Within the next five years, there will be an employee deficit of 90,398 individuals.
   - It is recommended that Pewlett Hackard aim to hire 18,080 employees each year for the following five years to accommodate these changes.
2. **Mentorship Deficit:** As seen in the table below, there is a significant deficit in the number of available mentors vs the number of retirees (and requisite new hires) in every department.
    - Additional parameters (I.E. employees born from 1965-1968) for qualified mentors should be considered to bridge these gaps.

<p align="center">
   <img width="800" height="400" src="https://github.com/Jamesrx33/Pewlett-Hackard-Analysis/blob/main/Visuals/Retirement_vs_Mentors.png?raw=true">
</p>

3. **Suggested Additional Analysis:** Replacements need to be found for the two retiring department managers. The following querys will compile a list of current employees, their title and department. These can be used to select a replacement manager for the departements losing one.

<p align="center">
   <img width="800" height="800" src="https://github.com/Jamesrx33/Pewlett-Hackard-Analysis/blob/main/Visuals/Query%20Suggestions.png?raw=true">
</p>


---

## Reference Documentation - [Source Code Repository](https://github.com/Jamesrx33/Pewlett-Hackard-Analysis), [Download .zip file](https://github.com/Jamesrx33/Pewlett-Hackard-Analysis/archive/refs/heads/main.zip)
