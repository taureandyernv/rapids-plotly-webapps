# rapids-plotly-webapps

As shown at [PyDataTT #5](https://www.youtube.com/watch?v=ppr74dY9-fE&t=1s)

## Overview
Properly contextualized visualizations, when taken beyond traditional static images and made interactive, can accelerate the time to explore, comprehend, and derive critical insights of large datasets for AI/ML practitioners. When coupled with the speed of RAPIDS by NVIDIA for large or complex datasets, the interactive visualizations capabilities can quickly be made into industrial specialist facing web apps. These dashboards aim to help specialists who may use a set range of machine learning operations in their day-to-day, but don't need or have the knowhow to interact with the full ML pipeline to get their job done. Using RAPIDS and Plot.ly Dash, set up on a Paperspace Instance, Taurean Dyer and Rajesh Ilango of NVIDIA will put on a hands-on, ”how to” workshop so that you can build your own highly interactive, RAPIDS powered dashboard visualizations that will help your company or customers get their jobs done faster. There were special guest speaker appearances by Paperspace and Plot.ly.

## In the Repo
The repo contains 4 notebooks (3 tutorials of increasing difficulty and a cuxfilter example notebooks) and a small dataset for a Single Cell Genomics worksflow, similar to the (NVIDIA Clara workflow](https://github.com/clara-parabricks/rapids-single-cell-examples).  Using this tutorial as a foundation of the key principals, [you can build similar ML driven dashboards acorss any industry or practice using Plot.ly's charts](https://dash-gallery.plotly.host/Portal/). 

**Plot.ly Tutorial**
- [Tutorial #1](rapids-plotly-paperspace-tutorial-1.ipynb): Basic set up where we send a RAPIDS cuDF dataframe to plot.ly dash on local or paperspace instance and demos some interactions.  This uses a small, preprocessed dataset
- [Tutorial #2](rapids-plotly-paperspace-tutorial-2.ipynb): Add buttons in your plot.ly Dash app that that kick off a series of RAPIDS cuML algorithms (PCA, Kmeans, UMAP) on a 1.5 GB dataset.  This demonstrates capability's speed at scale thanks to RAPIDS as there is a download link to a 1.5 GB dataset for tutorials 2 and 3.,
- [Tutorial #3](rapids-plotly-paperspace-tutorial-3.ipynb): Expands on some of the available user interactions of Dash on the large dataset.

**Bonus Notebooks**
- [NYC Taxi](nyc_taxi_visual_EDA_paperspace.ipynb): cuDF + cuSpatial + cuXFilter bsed data viz showing the adding context and RAPIDS GPU accelerated data science allows 

## Continuing your Journey
If you want to learn more about how RAPIDS and its ecosystem can accelerate your data visualization, EDA, or data analytics pipelines for datascientists and industry specialists  alike, please check out this [overview tutorial of RAPIDS datav viz](https://github.com/rapidsai-community/showcase/blob/main/team_contributions/cuxfilter-tutorial/cuxfilter_tutorial.ipynb) and this [in process Cheminfomatics usecase in Clara Discovery](https://www.youtube.com/watch?v=sJd670Y2DXI)! 
