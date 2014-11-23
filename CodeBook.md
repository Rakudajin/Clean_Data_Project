Variables of results:

<ol>
<li>Subject - the number of tested subject, according to the source data</li>
<li>Activity - activity performed by the subject</li>
<li>Other 66 variables - averages of a list of features for respecive subject and it's activity. List of features consists of those features among provided, which represent means and standard deviations</li>
</ol>

Steps of analysis (also commented in the code):
<ol>
<li>Loading data - labels, training and test sets</li>
<li>Renaming variables, so that we can merge train and test sets</li>
<li>Merging test and train sets</li>
<li>Taking only features, which represent means and standard deviations of measurements</li>
<li>Factorising and naming activities</li>
<li>Creating dataset with averages of all features for each activity of each subject</li>
</ol>
