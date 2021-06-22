# Datafest 2021 - An Investigation of Mental Health Diagnoses and Substance Abuse

Contributors: Michael Ting, Elizabeth Gallmeister, Melina Diaz, Reiya Downs

## Introduction

In the project scope, we saw that one of the points of interest for this data was “discovering and identifying patterns of drug use, with particular attention paid to identifying misuse” (Datafest 2021 Challenge document). With this in mind, we wanted to examine drug use in the context of people with disabilities, given that one in five individuals in the United States has a disability. Additionally, with the knowledge that mental disorders have been historically neglected in the US healthcare system, **we wanted to examine whether people with mental health diagnoses were likely to be more vulnerable to substance abuse than people without mental health diagnoses**.

In researching the intersection of mental health and substance use, we found that mental health disorders have been associated with substance abuse - illegal drugs can cause people with an addiction to experience mental disorder symptoms, and people with mental health diagnoses might turn to alcohol and drugs in an effort to self-medicate ([Mental Health and Substance Use Disorders | MentalHealth.gov](https://www.mentalhealth.gov/what-to-look-for/mental-health-substance-use-disorders)). 

## Project Scope

To investigate our question, we used the 2018 US dataset. We first examined the nonmedical use of prescription drugs in people with autism, then extended our examination to people with ADHD, anxiety, and depression as well. We also wanted to apply our analysis regionally/geographically, although we understand that the samples are not representative of states as a whole, especially as we did not reapply the weights to each state.

To display our data, we created an interactive dashboard using D3. 

## Visualizations

### Life Drug Use and Mental Disorders

We start with graphs displaying the difference in life use of different drug categories (recreational cannabis, prescription opioids, benzodiazepines, prescription stimulants, and GABA-analogue) for people with and without autism, ADHD, anxiety, and depression.

Looking at ADHD and nonmedical drug use, we see that people who have had a healthcare professional diagnose them with Attention Deficit Hyperactivity Disorder (ADHD) or Attention Deficit Disorder (ADD), on average had a higher consumption of non-medical cannabis, prescription opioids, benzodiazepine, or GABA-analogues within their lifetime compared to people without a ADHD or ADD diagnosis.

People with anxiety disorders also are more likely to have used cannabis, prescription opioids, benzodiazepine, and GABA-analogues as compared to people without an anxiety disorder diagnosis, and the same is true for people with depression diagnoses.

The only inconsistent pattern is for people diagnosed with autism spectrum disorder: they are, on average, LESS likely to use cannabis non-medically within their lifetime compared to people not on the Autism Spectrum, but the magnitude of the difference is not very great. Compared to people not on the Autism Spectrum, autistic people are around 20% more likely to non-medically use prescription opioids and GABA-analogues within their lifetime.

### Choropleth for Statewide Comparisons

We also included a choropleth to show the difference in probabilities of abusing opioids, between people with and without a mental disorder of the user’s choice. This is the real powerful part of this visualization: we can start making comparisons among states to see how differences we know about the states might be impacting drug abuse rates. For instance, we immediately noticed this trend in these blue states where the rate at which people who were diagnosed as autistic started abusing their prescriptions was actually lower than the users who did the same and were not diagnosed autistic. Notice how these are in more sparsely populated locations (Montana, Wisconsin), so a potential conclusion to draw is that these people with autism are less likely to feel social pressure from being in more crowded areas and so are less likely to turn to substance abuse to alleviate their discomfort. 

We also included a slider to change the amount that each state invests in mental health resources. We thought more money spent would correlate with lower levels of substance abuse, but we saw that that wasn’t quite the case, and it would be an interesting point to investigate further in the future.

Finally, we have aggregate measures of DAST-10 scores for each of the four mental disorders of interest.

## Acknowledgements

We’d like to thank [Zainul Arifin](https://twitter.com/SaintZainn) for the inspiration (and importantly, the [code base](https://github.com/ZainulArifin1/WeeklyPlot/tree/main/Week%202%2030%20DAY%20CHART)!) for some of our visualizations, Rocky Mountain Poison and Drug Safety center for their informative data, and ASA for sponsoring Datafest and making this all possible!
