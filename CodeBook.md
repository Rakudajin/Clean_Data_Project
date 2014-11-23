Variables of results:


<b>Subject:</b>

The number of tested subject, according to the source data

<b>Activity:</b>

Activity performed by the subject. Variable is a factor with the following levels:
<ol>
<li>WALKING</li>
<li>WALKING_UPSTAIRS</li>
<li>WALKING_DOWNSTAIRS</li>
<li>SITTING</li>
<li>STANDING</li>
<li>LAYING</li>
</ol>

<b>Features:</b>

Averages of 66 features for each activity for each subject. List of features consists of those features among provided, which represent means and standard deviations.

Variable names represent the names of these features.

<b>Steps of performed analysis</b> (also commented in the code):
<ol>
<li>Loading data - labels, training and test sets</li>
<li>Renaming variables, so that we can merge train and test sets</li>
<li>Merging test and train sets</li>
<li>Taking only features, which represent means and standard deviations of measurements</li>
<li>Creating dataset with averages of all features for each activity of each subject</li>
<li>Factorising and naming activities. Moved it here, as working with numeric on previous steps was more convenient.</li>
</ol>
