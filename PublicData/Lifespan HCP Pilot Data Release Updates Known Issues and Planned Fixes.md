---
title: 'Lifespan HCP Pilot Data Release Updates: Known Issues and Planned Fixes'
created: '2014-10-29T13:41:16.377Z'
updated: '2015-03-27T10:25:13.292Z'
updated_by: Will Horton
source: 
  https://wiki.humanconnectome.org/display/PublicData/Lifespan+HCP+Pilot+Data+Release+Updates%3A+Known+Issues+and+Planned+Fixes
space: PublicData

---
The WU-Minn and MGH Human Connectome Project (HCP) consortia are conducting a Lifespan HCP Pilot study using modified HCP-style imaging protocols for subjects in 6 different age groups across the lifespan. As this data is collected and processed, imaging data is being released from these subjects on a regular basis. Details on what data is included in each release will available on the [HCP Lifespan project page](http://lifespan.humanconnectome.org/)[.  On this wiki page, we document known updates, bugs, and known missing files in the data distributed with each release  and our current plans to fix or patch each bug. Completed bug fixes will also be noted (in **green**).](https://wiki.humanconnectome.org/humanconnectome.org/documentation/) 

# Initial (Phase 1a Unprocessed) Data Release (August 27, 2014)

## **Major Issues**

* ***Scaling of T1w image intensities does not match T2w image scaling in 8 subjects***  
For 8 subjects in the Lifespan 1a Unprocessed data release, the T1w images as collected are not intensity matched with the T2w images. Those T1w images will need to be intensity corrected (multiplied by 5) in order to successfully use them for the generation of myelin maps in the HCP Structural Preprocessing pipeline. The 8 subjects with this condition are:

LS3026

LS4025

LS4036

LS4041

LS4043

LS4047

LS5007

LS5040  
  


Planned fix: Intensity matched T1w images have been created internally for use in the preprocessing of the Phase1a Lifespan data and will be released when the preprocessed data is released in early 2015.   


Users who want to run the HCP Structural preprocessing pipeline themselves and generate correct myelin maps on the currently released data will need to multiply the T1w imaging intensities by 5 before running the pipeline. We do not know of any other problems, aside from the myelin mapping, that this issue causes (if you find some, please let us know!).

## **Minor Issues and Updates**

* ***None to report***  
None to report yet.  
  
Planned Fix: None
