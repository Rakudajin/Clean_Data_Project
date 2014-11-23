Clean_Data_Project
==================

Project for the Getting an Cleaning Data course


<b>Repository contains the following:</b>
<ol>
<li>UCI HAR Dataset - folder with the source of data, provided in the assignment</li>
<li>run_analysis.R - script of all the work required for the assignment</li>
<li>results.txt - the final tidy dataset as the result of 5th step of the assignment</li>
<li>CodeBook.md - explanation of variables and performed analysis</li>
<li>Readme.md</li>
</ol>

<b>Steps of performed analysis</b> (also commented in the code):
<ol>
<li>Loading data - labels, training and test sets</li>
<li>Renaming variables, so that we can merge train and test sets</li>
<li>Merging test and train sets</li>
<li>Taking only features, which represent means and standard deviations of measurements</li>
<li>Creating dataset with averages of all features for each activity of each subject</li>
<li>Factorising and naming activities. Moved it here, as working with numeric on previous steps was more convenient.</li>
</ol>
