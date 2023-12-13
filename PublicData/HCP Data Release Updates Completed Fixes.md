---
title: 'HCP Data Release Updates: Completed Fixes'
created: '2015-03-23T13:18:33.365Z'
updated: '2015-03-23T13:35:08.087Z'
updated_by: Jennifer Elam
source: 
  https://wiki.humanconnectome.org/display/PublicData/HCP+Data+Release+Updates%3A+Completed+Fixes
space: PublicData

---
The WU-Minn Human Connectome Project (HCP) releases imaging data collected on subjects on a regular basis. Details on what data is included in each release are available in the Reference Manual for that release on the [HCP documentation page](https://wiki.humanconnectome.org/humanconnectome.org/documentation/).  On the [HCP Data Release Updates: Known Issues and Planned fixes](../PublicData/HCP Data Release Updates Known Issues and Planned fixes.md) wiki page, we document known updates, data issues, bugs, and known missing files in the data distributed with each release (including those distributed in Connectome in a box for each release) and plans to fix or patch each bug.

On this wiki page, we document all completed data/bug fixes for each release.

# 500 Subjects Release (June 6, 2014) + MEG2 (November 26, 2014)

* ***SOCIAL\_LR tfMRI data for subject 748662 corrupted***  
A significant amount of head motion in the SBRef scan collected for the SOCIAL\_LR task for S500 subject 748662 corrupted data for the entire scan. Therefore, the S500 released data for SOCIAL\_LR of 748662 (including the unprocessed, minimally preprocessed, and level 2, cross run analyzed data) should not be used.     
We are in the process of removing the corrupt data from ConnectomeDB. SOCIAL tfMRI data for this subject downloaded from June 6, 2014-October 31, 2014 (or distributed in Connectome in a Box drives dated 20140805 or earlier) will contain the corrupted data and should not be used.   
  
**Completed fix:** The corrupt SOCIAL\_LR tfMRI data for subject 748662 has been permanently removed from ConnectomeDB as of 10/31/2014. These files need to be removed from 500 Subjects Connectome in a Box dated 20140805 or earlier. These files have been removed in 500 Subjects Connectome in a Box versions dated 20141203 and later.
* ***Diffusion data for subject 173132 corrupted***  
A problem with the early stages of the v3.1 (500 Subjects) preprocessing of diffusion data released for subject 173132 has been found. Diffusion data for this subject downloaded from June 6, 2014-October 31, 2014 (or distributed in Connectome in a Box drives dated 20140805 or earlier) should not be used.  
  
**Completed fix:** Diffusion data for subject 173132 has been completely reprocessed and the fixed version is available in ConnectomeDB as of 10/31/14.  These files will need to be replaced for 500 Subjects Connectome in a Box dated 20140805 or earlier. The reprocessed files are included in 500 Subjects Connectome in a Box versions dated 20141203 and later.

 

* ***Problems using CSV files downloaded from ConnectomeDB with some platforms***  
Users have reported issues using some CSV readers/importers (including MATLAB) and user-generated code to read the comma separated variable (CSV) files downloaded from ConnectomeDB that contain Behavioral and Demographic data on HCP subjects.The issue is that some CSV importers ignore double-quotation marks (" "), which by CSV standard practice are used to handle single fields that contain commas or carriage returns. Our CSV files contain a small number of fields that contain commas within the field. These single fields are being split into multiple fields by CSV importers/code that ignore the standard, resulting in added and misaligned data columns. This issue affects all CSVs (both Open Access and Restricted Access versions) downloaded from ConnectomeDB from Q1 (March 2013) until November 2014.

  
**Completed fix:** As of the MEG2 release (Nov 26, 2014) the commas were removed from the few data fields that contain these in the HCP dataset to fix this issue for future downloaded CSVs.
* ***WM\_Stats.csv files for subject 154835***  
A bug produced a short versions of 154835\_WM\_LR\_Stats.csv and 154835\_WM\_RL\_Stats.csv that were in ConnectomeDB from June 6, 2014 - August 13,2014. This also affects Connectome in a Box drives dated 20140805 or earlier.  
  
**Completed Fix:** We have replaced the short files with correct files of the same name. Users should re-download and replace the WM task unprocessed and preprocessed packages for this subject in order to obtain the corrected files. These files need to be replaced for 500 Subjects Connectome in a Box dated 20140805 or earlier.

  


* *****prepare\_level2\_feat\_analysis.sh script not included in tfMRI packages*****   
The prepare\_level2\_feat\_analysis.sh helper bash script for setting up the registration matrices/directory prior to running level 2 feat analysis was inadvertently omitted from all the minimally preprocessed data packages for the tfMRI data in the 500 Subjects release:  
e.g.  ${StudyFolder}/${SubjectID}/MNINonLinear/Results/tfMRI\_SOCIAL/prepare\_level2\_feat\_analysis.sh  
  
**Completed no-fix alternate:** Instead of distributing this "legacy" script with the preprocessed tfMRI packages, we are distributing the script along with tfMRI analysis advice via the links below:

**Users who would like this script for current use can download it by clicking this link: [prepare\_level2\_feat\_analysis.sh](https://wiki.humanconnectome.org/download/attachments/29589520/prepare_level2_feat_analysis.sh?version=2&modificationDate=1408551825889&api=v2)** 

Please also see the **[Advice for FEAT Analysis of HCP task fMRI data](../PublicData/Advice for FEAT Analysis of HCP task fMRI data.md)** for more information on performing tfMRI analysis on HCP data.  


Note: Users can also download task analysis data packages containing the results of individual subject, cross-run ("level 2") fMRI grayordinates analysis in FSL for each HCP task at various smoothing levels.  Analogous "level2" data packages for volume-based tfMRI processing are available at 4mm smoothing. Please see the [HCP 500 Subjects Data Release Reference Manual](http://humanconnectome.org/documentation/S500/S500_Release_Reference_Manual.pdf) for more details.

 

* ***LANGUAGE\_Stats.csv files for subjects 901442 and 713239***  
A bug produced blank versions of 901442\_LANGUAGE\_RL\_Stats.csv and 713239\_LANGUAGE\_LR\_Stats.csv that were in ConnectomeDB from June 6, 2014 - July 29,2014. This also affects Connectome in a Box drives dated 20140805 or earlier.  
  
**Completed Fix:** We have replaced the blank files with correct files of the same name. Users should re-download and replace the LANGUAGE task unprocessed and preprocessed packages for these two subjects in order to obtain the corrected files. These files need to be replaced for 500 Subjects Connectome in a Box dated 20140805 or earlier.

  


* ***Color Vision/Eye updates: subjects*****125525, 126931, 140925, 154936, 180129, 211417, 355542, 390645, 424229, 586460, 599671, 644044, 729254, 733548**  
The Color Vision and/or Eye tested restricted data for the following subjects was incorrect from June 6, 2014 - July 11, 2014. Restricted access users should check family structure fields in ConnectomeDB for more details.  
125525  
 126931  
 140925

154936  
 180129  
 211417  
 355542  
 390645  
 424229

586460  
 599671

644044  
 729254  
 733548

**Completed Fix:** We have updated the Color Vision/Eye tested information for these subjects in ConnectomeDB  as of June 12, 2014.  Restricted Access users that downloaded the restricted dataprior to that date should update their restricted data accordingly.

  


* ***Race/Ethnicity update for subject 163836***  
The Race and Ethnicity restricted data for subject 163836 was incorrect from June 6, 2014 - July 10, 2014.  Restricted access users should check these fields in ConnectomeDB for more details.     
  
**Completed Fix:** We have updated the race and ethnicity information for this subject in ConnectomeDB as of July 11, 2014. Restricted Access users that include this subject in their analyses will need to check the demographic data in DB and update downloaded restricted data accordingly.
* ***Family Structure update for subject 256540***  
Some of the Restricted family structure data for subject 256540 was incorrect from June 6, 2014 - July 2, 2014. Restricted access users should check family structure fields in ConnectomeDB for more details.**Completed Fix:** We have updated the family structure information for this subject in ConnectomeDB as of July 3, 2014. Restricted Access users that include this subject in their analyses will need to check the demographic data in DB and update downloaded restricted data accordingly.
* ***Diffusion data reprocessed for subject 125525***  
A problem with the v3.1 (500 Subjects) preprocessing of diffusion data released for subject 125525 has been found. Diffusion data for this subject downloaded from June 6-June 30, 2014 should not be used. Diffusion data for this subject released in Q1-Q3 should not be affected by this problem.  
  
**Completed Fix:** Diffusion data for subject 125525 has been reprocessed and is now correct in ConnectomeDB as of July 1, 2014. Users should re-download the preprocessed dMRI data for this subject. 500 Subjects Connectome in a Box contains the updated data.
* ***Days since last Menstruation data updates: subjects 54704****6,** **135932, 510326, 422632 & 116322***  
The Days since last Menstruation restricted data for subjects 547046, 135932, 510326, 422632 & 116322 was incorrect from June 6, 2014 - June 11, 2014.  Restricted access users should check this field in ConnectomeDB for more details.     
  
**Completed Fix:** We have updated the Days since last menstruation information for these subjects in ConnectomeDB as of June 12, 2014. Restricted Access users that downloaded the restricted data during this time period should update their restricted data accordingly.
* ***Twin status/zygosity data updates for subjects****161630 &*** ***163836***  
The Twin status and zygosity restricted data for subjects 161630 & 163836 was incorrect from June 6, 2014 - June 11, 2014.  Restricted access users should check these fields in ConnectomeDB for more details.     
  
**Completed Fix:** We have updated the twin status/zygosity information for these subjects in ConnectomeDB as of June 12, 2014. Restricted Access users that downloaded the restricted data during this time period should update their restricted data accordingly.

# Q3 Release (September 23, 2013; more dMRI on November 26, 2013, all Q1-Q3 diffusion available January 31, 2014)

 

* ***Subjects 209733 and 528446 removed from ConnectomeDB***   
Second-level QC on all subjects has revealed two Q2 subjects with structural brain abnormalities, specifically gray matter heterotopia. The abnormalities significantly affect functional and structural connectivity in these subjects, beyond what is considered normal variation. Therefore, we recommend that data from subjects 209733 and 528446 NOT be used in analyses.     
  
Subjects 209733 and 528446 were originally released in Q2 and have been available in ConnectomeDB and through Connectome in a Box since then. Both subjects were included in the Unrelated 40, Unrelated 80,  and Related 120 groups until the 500 subject release (June 6, 2014).   
  
**Completed Fix:** All data from subjects 209733 and 528446 have been removed from ConnectomeDB as of the 500 subject release and will no longer be distributed by HCP.
* *****T1w\_acpc\_dc\_restore\_1.25.nii.gz file not included in preprocessed diffusion MRI data packages*****  
 The diffusion preprocessing output file containing the structural volume sampled at the same resolution as the diffusion data (necessary for analysis) was inadvertently left out of the dMRI data packages released for Q3:   
e.g.  ${StudyFolder}/${SubjectID}/T1w/T1w\_acpc\_dc\_restore\_1.25.nii.gz  
   
**Completed Fix:** The dMRI data packages have been  rebuilt with this file and as of 1/28/2014 are available via download from ConnectomeDB.    


  
Users can also generate this file for previously downloaded or Connectome in a Box (CINAB) data, using the following FSL commands:

#Generate 1.25mm structural space for resampling the diffusion data into

${FSLDIR}/bin/flirt -interp spline -in T1w\_acpc\_dc\_restore -ref T1w\_acpc\_dc\_restore -applyisoxfm 1.25 -out T1w\_acpc\_dc\_restore\_1.25

${FSLDIR}/bin/applywarp --rel --interp=spline -i T1w\_acpc\_dc\_restore -r T1w\_acpc\_dc\_restore\_1.25 -o T1w\_acpc\_dc\_restore\_1.25

 

* ***Timing issue with tfMRI Working Memory EVs***  
For all eight blocked Working Memory EVs, the onset of the block was set to the onset of the first trial, rather than the preceding cue as it should have been. The consequence was that the boxcar started 2.5s later and ended 2.5s later than it should have. In addition, the "Measure" variable names were slightly inconsistent with those of the other tasks.

**Completed fix:** We replaced the Working Memory EVs with new versions set to onset at the cue before the block, and last until the end of the final trial in the block. The "Measure" variable names were modified to be consistent with those of the other tasks. These changes are available as part of the March 2014 data patch.

 

* ***Error in tfMRI Working Memory Stats files***  
The accuracy for targets within individual blocks (e.g., 2BK FACE) was not correct. The accuracy reported for targets in most conditions was actually the value derived from nontarget trials. In addition, the "Measure" variable names were slightly inconsistent with those of the other tasks.

**Completed fix:** We corrected the Target accuracies in the stats files. The "Measure" variable names were modified to be consistent with those of the other tasks. These changes are available as part of the March 2014 data patch.
* ***Improved formatting and additional variables in all tfMRI Stats files***  
**Completed update:** The following improvements to all tfMRI Stats files are available as part of the March 2014 data patch:


	+ Change to csv format to make processing behavioral files simpler.
	+ Consistency in variable naming and formatting across Stats files.
	+ Attempt to provide additional performance metrics for the specific conditions being used in the imaging analyses.
* ***Timing issue with HCP fMRI physiological monitoring data***  
There was a bug in the timing of physiological monitoring data released during Q1 - Q3 is offset due to a roughly 500 ms delay in the onset of recording for the respiratory, pulse oximetry, and external trigger signal during fMRI runs. Because the onsets of the log files for each of these physiological modalities were not simultaneous as we expected them to be, the physiological data in the processed log files (e.g., tfMRI\_WM\_RL\_Physio\_log.txt) was also offset. More specifically, relative to the external trigger signal contained in the processed log files, the respiratory signal was delayed by roughly 1000 ms and the pulse-oximeter signal was delayed by roughly 1500 ms.  
  
**Completed fix:** We re-aligned the onsets of the physiological signals with the external trigger signal in the processed log files for all Q1-Q3 physiological data that could be fixed. The realignment will also be applied to all future release subjects that are affected. The fix for the Q1-Q3 physiological data is available as part of the March 2014 data patch.

 

* ***EMOTION\_LR tfMRI data for Q3 subject 727654 has reconstruction artifact***  
Images collected during the EMOTION\_LR task for Q3 subject 727654 have artifacts related to the switchover in the HCP image reconstruction algorithm that was occurring at the time. Therefore the Q3 released data for EMOTION\_LR of 727654 (including the unprocessed, minimally preprocessed, and level 2, cross run analyzed data) should not be used.  
  
**Completed fix:** We reconstructed the images from the EMOTION\_LR task for 727654, reran the preprocessing and analysis pipelines for this dataset, and have them available as of the 500 subject data release (June 2014).

  

* *****prepare\_level2\_feat\_analysis.sh script not included in tfMRI packages*****   
The prepare\_level2\_feat\_analysis.sh helper bash script for setting up the registration matrices/directory prior to running level 2 feat analysis was inadvertently omitted from all the minimally preprocessed data packages for the tfMRI data in Q3:  
e.g.  ${StudyFolder}/${SubjectID}/MNINonLinear/Results/tfMRI\_SOCIAL/prepare\_level2\_feat\_analysis.sh  
  
**Completed fix:** This script has been added back into the Q3 preprocessed tfMRI packages as part of the March 2014 data patch**.** As of the 500 Subjects release (June 2014), instead of distributing this "legacy" script with the preprocessed tfMRI packages, we are distributing the script along with tfMRI analysis advice via the links below:

**Users who would like this script for current use can download it by clicking this link: [prepare\_level2\_feat\_analysis.sh](https://wiki.humanconnectome.org/download/attachments/29589520/prepare_level2_feat_analysis.sh?version=2&modificationDate=1408551825889&api=v2)** 

Please also see the **[Advice for FEAT Analysis of HCP task fMRI data](../PublicData/Advice for FEAT Analysis of HCP task fMRI data.md)** for more information on performing tfMRI analysis on HCP data.  


Note: With the Q3 and 500 Subjects release, users can also download task analysis data packages containing the results of individual subject, cross-run ("level 2") fMRI grayordinates analysis for each HCP task at various smoothing levels.  Analogous "level2" data packages for volume-based tfMRI processing at 4mm smoothing were made available as of March 2014 and also were part of the 500 Subjects released. Please see the [HCP Q3 Data Release Reference Manual](http://humanconnectome.org/documentation/Q3/Q3_Release_Reference_Manual.pdf) or the [HCP 500 Subjects Data Release Reference Manual](http://humanconnectome.org/documentation/S500/S500_Release_Reference_Manual.pdf) for more details.

 

* *****missing values in tfMRI Movement\_Regressors.txt for subjects 156233, 165849, and 366446*****   
Some values are missing in the following files :  
${StudyFolder}/156233/MNINonLinear/Results/tfMRI\_GAMBLING\_RL/Movement\_Regressors.txt

${StudyFolder}/156233/MNINonLinear/Results/tfMRI\_SOCIAL\_LR/Movement\_Regressors.txt

${StudyFolder}/165840/MNINonLinear/Results/tfMRI\_WM\_LR/Movement\_Regressors.txt

${StudyFolder}/366446/MNINonLinear/Results/tfMRI\_WM\_RL/Movement\_Regressors.txt

  
**Completed fix:** These files are corrected and released as part of the March 2014 data patch.

# Q2 Release (June 14, 2013)

#### *including Q1 + Q2 v2 preprocessed data*

******Users who have the Q1+Q2 data:****** A zipped archive is available containing all of the fixed files for all Q1+Q2 subjects and a python script for patching existing download or Connectome in a box data, which places the fixed files in the HCP directory structure (details in the [HCP Q2 Data Release Reference Manual](http://humanconnectome.org/documentation/Q2/Q2_Release_Reference_Manual.pdf) and the associated directory structure [Appendix III](http://humanconnectome.org/documentation/data-release/Q2_Release_Appendix_III.pdf)).   [Download the Q1/Q2 data patch script here](https://hcpx-demo.humanconnectome.org/app/action/ChooseDownloadResources?project=HCP_Resources&resource=Patch&filePath=HCP_Q3_Patch.zip) (requires ConnectomeDB login).   


##  **Major Issues**

* ***Subjects 209733 and 528446 removed from ConnectomeDB***   
Second-level QC on all subjects has revealed two Q2 subjects with structural brain abnormalities, specifically gray matter heterotopia. The abnormalities significantly affect functional and structural connectivity in these subjects, beyond what is considered normal variation. Therefore, we recommend that data from subjects 209733 and 528446 NOT be used in analyses.     
  
Subjects 209733 and 528446 were originally released in Q2 and have been available in ConnectomeDB and through Connectome in a Box since then. Both subjects were included in the Unrelated 40, Unrelated 80,  and Related 120 groups until the 500 subject release (June 6, 2014).   
  
**Completed Fix:** All data from subjects 209733 and 528446 were removed from ConnectomeDB as of the 500 subject release and will no longer be distributed by HCP.

 

* ***DICOM to NIFTI failure (incorrect number of volumes/lines****)** **in tfMRI Relational data***  
For one Q1+Q2 subject, DICOM to NIFTI failed to output correct number of volumes or lines in some tfMRI Relational data files:   
 ${StudyFolder}/138231/MNINonLinear/Results/tfMRI\_RELATIONAL\_LR/\*  
  
Subject/scan affected:                                         file type                              Issue:

            138231/tfMRI\_RELATIONAL\_LR             4D volume                           volumes should be 232 instead of 106  

            138231/tfMRI\_RELATIONAL\_LR    all movement regressor files        lines should be 232 instead of 106

            138231/tfMRI\_RELATIONAL\_LR           Physio\_log.txt                        triggers should be 232 instead of 105

Surface files for this subject will also be affected.

**Completed fix:** DICOM2NIFTI was rerun and files are fixed as of the Q3 release (September 2013). 

**Users should either: 1) replace unprocessed and processed versions Q1+Q2 Relational data for subject 138231 by re-downloading the Relational packages (both unproc and preproc) for subject 138231, or 2) download and run the Q1/Q2 release patch script available [here](https://db.humanconnectome.org/app/action/ChooseDownloadResources?project=HCP_Resources&resource=Patch&filePath=HCP_Q3_Patch.zip)** (requires ConnectomeDB login).

 

* ***tfMRI Social EV \*.txt files** **incomplete***  
For some Q1+Q2 subjects, EV files for the Social tfMRI task were missing an entry for one or more blocks, and thus those EV files are inaccurate and incomplete. Specifically, there was a bug in the EV creation script used for the Q1 and Q2 releases for the SOCIAL task such that blocks were omitted from the EV file if the subject didn't respond during that block.

e.g.  ${StudyFolder}/${SubjectID}/MNINonLinear/Results/tfMRI\_SOCIAL\_RL/EVs/\*.txt

Subjects/affected directories with this bug: [Q1+Q2 Subjects with Shortened tfMRI Social EV \*.txt Files](../pages/33128741.md)

**Completed fix:** These bugs have resolved for the Q3 release (September 2013). 

**Users should run the Q1/Q2 data patch script to correct all these incomplete files ([download available here](https://db.humanconnectome.org/app/action/ChooseDownloadResources?project=HCP_Resources&resource=Patch&filePath=HCP_Q3_Patch.zip))** (requires ConnectomeDB login).

 

* ***task fMRI .fsf files parameters incorrect, or .fsf file missing***  
We ran a script checking the parameters of the tfMRI .fsf files from the Q2 release and found the following bugs for the indicated subjects:  
e.g.  ${StudyFolder}/${SubjectID}/MNINonLinear/Results/tfMRI\_WM\_RL/\*.fsf  
  
Subject/scan affected:                              File                                                                      Issue:

             150423/tfMRI\_GAMBLING\_RL       tfMRI\_GAMBLING\_RL\_hp200\_s4\_level1.fsf        npts should be 232 instead of 253

             150423/tfMRI\_RELATIONAL\_LR    tfMRI\_RELATIONAL\_LR\_hp200\_s4\_level1.fsf     npts should be 193 instead of 232    


             329440/tfMRI\_GAMBLING\_RL       tfMRI\_GAMBLING\_RL\_hp200\_s4\_level1.fsf         npts should be 202 instead of 253

             250427/tfMRI\_WM\_RL                   tfMRI\_WM\_RL\_hp200\_s4\_level1.fsf                      file missing

             250427/tfMRI\_GAMBLING\_RL       tfMRI\_GAMBLING\_RL\_hp200\_s4\_level1.fsf         file missing

**Completed fix:** These bugs have resolved for the Q3 release (September 2013). 

****Users should run the Q1/Q2 data patch script to correct all these incomplete files** **(**[download available here](https://db.humanconnectome.org/app/action/ChooseDownloadResources?project=HCP_Resources&resource=Patch&filePath=HCP_Q3_Patch.zip)**)**** (requires ConnectomeDB login).  


 

* ***Mislabelling of FreeSurfer cortical parcels in aparc.a2009s+aseg.nii.gz files***

 There is a bug in the Q1+Q2 aparc.a2009s+aseg.nii.gz files (both in the T1w/ and MNINonLinear/ directories as shown below) for all subjects, such that all of cortex is labelled as 14175, which is wm\_rh\_S\_temporal\_transverse. The current files are corrupted in every subject and not usable for any analyses. 

 ${StudyFolder}/${SubjectID}/T1w/aparc.a2009s+aseg.nii.gz

 ${StudyFolder}/${SubjectID}/MNINonLinear/aparc.a2009s+aseg.nii.gz

**Completed fix:** These aparc files have been regenerated in Q1/Q2 subjects from pipeline intermediates and all Q1/Q2 packages have been updated with this change for Q3. The bug has been fixed in the PostFreeSurfer pipeline and Q3 subjects' data should not have this issue.    


****Users should run the Q1/Q2 data patch script to correct all these incomplete files** **(**[download available here](https://db.humanconnectome.org/app/action/ChooseDownloadResources?project=HCP_Resources&resource=Patch&filePath=HCP_Q3_Patch.zip)**)**** (requires ConnectomeDB login).  


 

* ***Some empty vertices (zeroes) near medial wall ***in rfMRI dtseries data******

In all minimally preprocessed fMRI data mapped to grayordinate surface vertices, e.g. 136833/MNINonLinear/Results/rfMRI\_REST2\_LR/rfMRI\_REST2\_LR\_Atlas.dtseries.nii, there are some empty vertices (timeseries = 0s) very near the medial wall. This is because the FreeSurfer defined medial wall sometimes extends outside the atlas medial wall used to define the grayordinates space.  Due to a bug in the PostFreeSurfer Pipeline, these vertices were set to zero because the affected subject's specific medial wall ROI was larger than the atlas medial wall ROI. This bug appears in approximately half the subjects' right and/or left hemispheres (too many to list here).

This bug should not create a problem for most users because the empty vertices should always be located around the medial wall (where the data is not very good anyway). However, the zero values could cause some algorithms to crash if they can't cope with zeros in CIFTI/surface data.The tfMRI analysis pipeline is not affected by this bug and the issue is fixed in the analyzed task data.  FIX is not negatively affected by this, but the bug remains in the fix cleaned timeseries.

Planned Fix: This bug is not trivial to fix for all Q1, Q2, and Q3 subjects without running all these subjects through a new version of the minimally preprocessing pipelines (specifically the PostFreeSurfer pipeline, see [Glasser et al. 2013](http://www.sciencedirect.com/science/article/pii/S1053811913005053) for details), which will take a substantial amount of computing time. To date (August 2013), we have not decided exactly when we will do this.

***Users who need to fix the files before we make the permanent fix***, a relatively simple [DIY fix of affected files](../PublicData/DIY fix for zeroes near medial wall in rfMRI dtseries data.md) is available using the command "-cifti-dilate" in **wb\_command**.

 

* ***Missing (Non-NIH Toolbox) Behavioral Data***  
In a limited number of Q1-Q3 subjects, responses to some behavioral and individual difference measures (specifically the tests we do in addition to the NIH Toolbox battery, i.e. Non-Toolbox tests) were not uploaded correctly when the tests were performed.    
Here is a list of the affected subjects: [Q1+Q2 Subjects Missing (Non-NIH Toolbox) Behavioral Data](../pages/33128765.md)

**Near Completed fix:** For all but the last two subjects, 131924 and 677968, the data has been recovered and will be released as part of the Q3 release in the ConnectomeDB. For the two remaining subjects, we have sent paper forms for them to refill their responses to the questions asked at their subject visit, which we will add to ConnectomeDB once they are received.

**Users who have the Q1+Q2 data should re-download the fixed behavioral data for all subjects available [here](https://hcpx-demo.humanconnectome.org/REST/search/dict/Subject%20Information/results?format=csv&restricted=0&project=HCP_Q3) or on the ConnectomeDB splash page.** 

