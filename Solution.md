<b>Section 1</b><br><ol>
<li>Write a query to print the number of employees per department in the organization<br>
<i>SELECT DEPARTMENT, COUNT(*) FROM Employee GROUP BY DEPARTMENT;</i><br></li>
<li>Write an SQL query to find the name of the top-level manager of each department<br>
// As top level manager won’t have a supervising manager, they can be selected as manages who don’t have a supervisor.<br>
<i>SELECT * FROM Employee where (EMPLOYEE_ID in (SELECT DISTINCT MANAGER FROM Employee) AND MANAGER is NULL);	</i></li>
<li>Write a query to find the total incentive received by a given employee in a given month.
<i>Select a.EMPLOYEE_ID, FIRST_NAME,SUM(INCENTTIVE_AMOUNT) FROM Employee A inner join Incentives B on A.EMP_ID=B. EMPLOYEE_REF_ID WHERE (A.EMP_ID=/*Given ID*/ AND MONTH(INCENTIVE_DATE)=/*Given Month*/)</i> GROUPBY B. EMPLOYEE_REF_ID;
</li><li>Write a query to find the month where employees got maximum incentive<br>
// The incentives are grouped by date, sorted and the month with the highest incentive is shown<br>
<i>SELECT SUM(INCENTIVE_AMOUNT),Monthname(INCENTIVE_DATE) FROM Incentives group by DATE_FORMAT(INCENTIVE_DATE, "%Y-%m-01")ORDER BY SUM(INCENTIVE_AMOUNT) DESC limit 1;</i>
</ol>

<b>Section 2</b>
<ol start="5">
<li> You have two sand timers, which can show 4 minutes and 7 minutes respectively. Use both the sand timers (at a time or one after other or any other combination) and measure a time of 9 minutes.
<i>•	Start the 7-minute sand timer and the 4-minute sand timer.<br>
•	Once the 4-minute sand timer ends turn it upside down instantly.<br>
Time Elapsed: 4 minutes. At this moment, 3 minutes of sand is left in the 7-minute sand timer.<br>
•	Once the 7-minute sand timer ends turn it upside down instantly.<br>
Time Elapsed: 7 minutes. At this moment, 1 minutes of sand is left in the 4-minute sand timer.<br>
•	After the 4-minute sand timer ends, only 1 minute is elapsed in 7-minute sand timer, therefore for another minute turn the 7-minute sand timer upside down.<br>
Time Elapsed: 8 minutes.<br>
•	When the 7-minute sand timer ends, total time elapsed is 9 minutes.<br>
So effectively 8 + 1 = 9.</i>
<li>John and Mary are a married couple. They have two kids, one of them is a girl. Assume safely that the probability of each gender is 1/2.
What is the probability that the other kid is also a girl?<br><i>
As both events are independent, Possible Combinations are:
<br>
(Boy, Boy)<br>
(Boy, Girl)<br>
(Girl, Boy)<br>
(Girl, Girl)<br>
Probability that the other kid is also a girl = P(Both Girls)<br>
•	P(Both girls | At least one girl) = P(both girls) / P(At least one girl)<br>
•	P(Both girls) = .5 * .5 = .25<br>
P(At least one girl) = 1 - P(No girls)<br>
P(No girls) = P(Both boys) = .5 * .5 = .25<br>
P(AT least one girl) = 1 - .25 = .75<br>
•	Thus, P(Both Girls | At least one girl) = .25 / .75 = 1/3<br>
 </i>
<li>The following appeared as part of a campaign to sell advertising time on a local radio station to local businesses.
Ron’s Cafe began advertising on our local radio station this year and was delighted to see its business increase by 10 percent over last year's totals. Their success shows
you how you can use radio advertising to make your business more profitable.
Discuss how well reasoned you find this argument. In your discussion be sure to analyze the line of reasoning and the use of evidence in the argument. For example, you may need to consider what questionable assumptions underline the thinking and what alternative explanations or counterexamples might weaken the conclusion. You can also discuss what sort of evidence would strengthen or refute the argument, what changes in the argument would make it more logically
sound and what, if anything, would help you better evaluate in conclusion.


<br><i>
<p>The author in the argument concludes that as the Ron’s cafe increased its business by 10 percent over the last year by advertising in the local radio station, so other businesses should follow suit and advertise their businesses on the local radio to make their business more profitable. However, the argument is flawed because it fails to supply sufficient support in favor of the argument.
</p><p>
First, we are told that for Ron’s Cafe increased its business by 10 percent over the last year by advertising in the local radio, but it has not been mentioned that whether the increase in the business was offset by the amount of money spent on advertisement in the radio channel. If the previous scenario holds true, then companies actually might not be increasing their profits.
</p>
<p>
Second, Even if we consider that the business for Ron’s Cafe increased after it advertised in the local radio, we cannot be sure that this will happen for other businesses. It could well be the case that many people who listen to the radio might be coffee consumers but might not be interested in other products. Therefore, the generalization that the author makes based on a single case might not hold true for other scenarios or businesses.
</p>
<p>
Finally, there could be other alternate reasons that could have contributed to the success of the cafe business such as opening of a new outlet or better management of the cafe resources or introduction of a new product in the cafe outlet that sold well. Any of these reasons could account for the increase in the business. Therefore, advertising in the local radio might not be the only contributor for the increase in the cafe business.
</p>

In light of the above the argument is flawed and it can be strengthened if the aforementioned concerns are addressed.

</ol>
