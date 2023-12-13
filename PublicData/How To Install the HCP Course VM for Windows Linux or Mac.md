---
title: How To Install the HCP Course VM for Windows, Linux or Mac
created: '2015-09-24T09:38:10.286Z'
updated: '2015-09-24T12:04:13.022Z'
updated_by: Jennifer Elam
source: 
  https://wiki.humanconnectome.org/display/PublicData/How+To+Install+the+HCP+Course+VM+for+Windows%2C+Linux+or+Mac
space: PublicData

---
## **[Download Course VM](https://mail.mir.wustl.edu/OWA/redir.aspx?SURL=CCWkbvKM7zE7xcw3TMbeEhdHR9LhaKq0H0XY9xWB2QhhDTfZ6MTSCGgAdAB0AHAAcwA6AC8ALwBkAGIALgBoAHUAbQBhAG4AYwBvAG4AbgBlAGMAdABvAG0AZQAuAG8AcgBnAC8AYQBwAHAALwBhAGMAdABpAG8AbgAvAEMAaABvAG8AcwBlAEQAbwB3AG4AbABvAGEAZABSAGUAcwBvAHUAcgBjAGUAcwA_AHAAcgBvAGoAZQBjAHQAPQBIAEMAUABfAFIAZQBzAG8AdQByAGMAZQBzACYAcgBlAHMAbwB1AHIAYwBlAD0AQwBvAHUAcgBzAGUARABhAHQAYQAmAGYAaQBsAGUAUABhAHQAaAA9AEgAQwBQAF8AMgAwADEANQBfAEMAbwB1AHIAcwBlAF8AVgBNAC4AegBpAHAA&URL=https%3a%2f%2fdb.humanconnectome.org%2fapp%2faction%2fChooseDownloadResources%3fproject%3dHCP_Resources%26resource%3dCourseData%26filePath%3dHCP_2015_Course_VM.zip) (275 GB)**

**(Requires [ConnectomeDB](https://db.humanconnectome.org/app/template/Login.vm) login and [Aspera plugin](http://humanconnectome.org/documentation/connectomeDB/downloading/installing-aspera.html))**

* Using the link above, Download the VM file, HCP\_2015\_Course\_VM.zip.

> [!note] 
> Remember to change the settings in the Aspera Connect plugin (via the “gear” icon in the Transfers window or through Aspera Connect Menu>Preferences>Transfers) to download to your external hard drive or other storage with ≥ 1TB of free disk space for downloading/extracting the data. The default in Aspera Connect is to download to your desktop (which you probably don’t want). The download process will likely take multiple hours, even using Aspera.
* Import the archive into VM virtualizer software (VMware Player, VMware Fusion, or VirtualBox) where you will run the VM (this step takes 1-6 hours and is included in the instructions below).  If your internal storage has more than 1TB of space free, this will generally be acceptably fast (1-2 hours) for the purpose.
* **If you are planning to buy a new **≥ 1TB** external drive for this purpose**, we recommend that you check the computer(s) you intend to use it with for USB 3, eSATA, or Thunderbolt ports, and get an external drive with whichever of those interfaces your computer(s) have, rather than USB 2.  While USB 2 will work, it is likely to be significantly slower when importing the VM and while doing the practicals.

## **Windows and Linux users: Using VMware Player (free)**



| Step | Instructions |
| --- | --- |
| 1 | Rename the .zip file **HCP\_2015\_Course\_VM.ova** |
| 2 | Visit **[my.vmware.com](https://mail.mir.wustl.edu/OWA/redir.aspx?SURL=K-1CfhWHmy5Yre_a889vc-kopUnYOPRVJAu6HgWj7E5hDTfZ6MTSCGgAdAB0AHAAcwA6AC8ALwBtAHkALgB2AG0AdwBhAHIAZQAuAGMAbwBtAC8AdwBlAGIALwB2AG0AdwBhAHIAZQAvAGYAcgBlAGUAIwBkAGUAcwBrAHQAbwBwAF8AZQBuAGQAXwB1AHMAZQByAF8AYwBvAG0AcAB1AHQAaQBuAGcALwB2AG0AdwBhAHIAZQBfAHAAbABhAHkAZQByAC8ANwBfADAA&URL=https%3a%2f%2fmy.vmware.com%2fweb%2fvmware%2ffree%23desktop_end_user_computing%2fvmware_player%2f7_0)** and download the free installation package for "VMware Player for Windows 64-bit operating systems" or "VMware Player for Linux 64-bit".On Linux, you may need to enter the following commands from your Downloads directory to open the .bundle file you just downloaded for the install:```
$ chmod a+x VMware-Player-7.1.2-2780323.x86_64.bundle
$ sudo ./VMware-Player-7.1.2-2780323.x86_64.bundle
```

The installation process will briefly indicate that it is installing VMware Player Pro. However, what you are installing can actually be used as either VMware Player (Free) or VMware Player Pro depending upon whether or not you enter a license key later.  |
| 3 | When you run VMware Player for the first time, you may be asked to either enter a license key to enable VMware Player Pro features (which are not necessary for running the HCP 2015 Course VM) or enter a valid email address to agree to receive promotional emails regarding VMware Player. |
| 4 | Once VMware player is running, select the "Open a Virtual Machine" option that appears on the right hand side of the VMware Player main screen. (Alternatively, you can select Player --> File --> Open... from the VMware Player menu.) |
| 5 | Browse to the **HCP\_2015\_Course\_VM.ova** file (the zip file you renamed in step 1) and select Open. Make sure the Storage path you enter for the new VM is  `/[Path to External Hard drive or other ≥1 TB storage]/VMs/HCP_2015_Course_VM` and click import. Importing the VM may take a long time (6 hours over USB 2, 2 hours over USB 3 or eSATA). |
| 6 | To start the Virtual Machine, you will need to select the "Play virtual machine" option that appears in the VMware Player screen. |
| 7 | Login as HCP Course, password “hcpcourse”.  You can now follow the instructions in the **[course practical PDFs](http://humanconnectome.org/courses/2015/exploring-the-human-connectome.php)** and run the practicals within the VM. The practical PDFs are also located within the VM on the Desktop “HCP\_Course\_PDFs/Practicals\_Final” folder. |

> [!info] 
> Note on following the HCP Course Practical Instructions:  Users may find cutting and pasting commands used in many of the instructions for the practicals easier using the text files in the HCP\_Course\_Practicals\_txt\_commands folder available in the VM through the  Desktop “HCP\_Course\_PDFs/Practicals\_Final” folder or by download from wustl.box.com in the 2015\_Practicals\_for\_Distribution folder.
 

## **Mac Users: Using VMWare Fusion (Requires Purchase)**



| Step | Instructions |
| --- | --- |
| 1 | Rename the .zip file **HCP\_2015\_Course\_VM.ova** |
| 2 | Visit **[store.vmware.com](https://mail.mir.wustl.edu/OWA/redir.aspx?SURL=HAxxc0m0qFs5ANj1IPM8Zt8Thalq-b6uTPJgIQTcfqxhDTfZ6MTSCGgAdAB0AHAAOgAvAC8AcwB0AG8AcgBlAC4AdgBtAHcAYQByAGUALgBjAG8AbQAvAEQAUgBIAE0ALwBzAHQAbwByAGUAPwBBAGMAdABpAG8AbgA9AEQAaQBzAHAAbABhAHkAUAByAG8AZAB1AGMAdABEAGUAdABhAGkAbABzAFAAYQBnAGUAJgBTAGkAdABlAEkARAA9AHYAbQB3AGEAcgBlACYATABvAGMAYQBsAGUAPQBlAG4AXwBVAFMAJgBUAGgAZQBtAGUASQBEAD0AMgA0ADgANQA2ADAAMAAmAEUAbgB2AD0AQgBBAFMARQAmAHAAcgBvAGQAdQBjAHQASQBEAD0AMwAwADQAMwAyADIANAAwADAAJgBzAHIAYwA9AGUAQgBJAFoAXwBTAHQAbwByAGUASABvAG0AZQBfAEYAZQBhAHQAdQByAGUAZABfAEYAdQBzAGkAbwBuAF8AQgB1AHkAXwBVAFMAXwBXAGkAbgBkAG8AdwBzADEAMABQAHIAbwBtAG8A&URL=http%3a%2f%2fstore.vmware.com%2fDRHM%2fstore%3fAction%3dDisplayProductDetailsPage%26SiteID%3dvmware%26Locale%3den_US%26ThemeID%3d2485600%26Env%3dBASE%26productID%3d304322400%26src%3deBIZ_StoreHome_Featured_Fusion_Buy_US_Windows10Promo)** and purchase/download the installation package for "VMware Fusion" for Mac 64-bit, License Type “New” – this will cost $63-70, depending on current promotions. |
| 3 | Follow the instructions for Windows / Linux users to download install VMware Fusion and open the renamed **HCP\_2015\_Course\_VM.ova** VM file. |

 

## **Mac/Linux/Windows Users: Using VirtualBox (Free)**



| Step | Instructions |
| --- | --- |
| 1 | Rename the .zip file **HCP\_2015\_Course\_VM.ova** |
| 2 | Download and install Oracle VM VirtualBox at **[www.virtualbox.org](https://mail.mir.wustl.edu/OWA/redir.aspx?SURL=UhGaskFrdUA5WET6XcqkFDmMKTTg3c6HsX-wNLVRlH5hDTfZ6MTSCGgAdAB0AHAAcwA6AC8ALwB3AHcAdwAuAHYAaQByAHQAdQBhAGwAYgBvAHgALgBvAHIAZwAvAA..&URL=https%3a%2f%2fwww.virtualbox.org%2f)**, and the VirtualBox v5.0.4 extension pack (separate link). If installation of the latest version VirtualBox v5.0 fails due to your OS version or the amount of RAM you have, [download and install VirtualBox v4.3.3 and its associated extension pack](https://mail.mir.wustl.edu/OWA/redir.aspx?SURL=Z8jvT1gWOH5HgEtyXPhHsVBQ-EIF54Pxd1UhlEBikCRhDTfZ6MTSCGgAdAB0AHAAcwA6AC8ALwB3AHcAdwAuAHYAaQByAHQAdQBhAGwAYgBvAHgALgBvAHIAZwAvAHcAaQBrAGkALwBEAG8AdwBuAGwAbwBhAGQAXwBPAGwAZABfAEIAdQBpAGwAZABzAF8ANABfADMA&URL=https%3a%2f%2fwww.virtualbox.org%2fwiki%2fDownload_Old_Builds_4_3) (separate link). |
| 3 | Install the appropriate the VirtualBox v5.0.4 extension pack by double clicking on the downloaded file or right click + Open in VirtualBox. |
| 4 | Run VirtualBox. Click VirtualBox menu->Preferences, click on "General".  Change the Default Machine Folder (Snapshot Folder) to `/Volumes/[Path to External Hard drive or other storage]/VirtualBox_vms`. This will ensure that the HCP Course VM is imported to a location with enough hard drive space. |
| 5 | In a Finder/Explorer window, navigate to the location you downloaded the VM. Click on **HCP\_2015\_Course\_VM.ova**(the zip file you renamed in step 1). |
| 6 | VirtualBox will open a new window with default settings for importing the HCP\_2015\_Course\_VM.ova as a New VM. Click on the Name (default is “vm”), and enter a name like "HCP Course VM". * Verify that the Guest OS Type is **Redhat 64-bit**
* Verify that the CPUs is set to **2**.
 |
| 7 | The amount of RAM allocated to the Course VM defaults to 4096MB. If you have a computer with limited memory (4GB), click on this number and change it to 3012MB (note: in this case, some practical steps may run slowly or hang, but the Course VM should still run). If you have a computer with sufficient memory, leave the 4096MB default or change the RAM to a higher amount if you want to try things outside the course practical instructions (leave at least 1GB of your physical memory to your OS). |
| 8 | Click **Import**. Importing the VM may take a long time (6 hours over USB 2, 2 hours over USB 3 or eSATA). |
| 9 | Once the importing is done, the VirtualBox VM Manager will show the specifications of the newly created VM.  Click on "**Display**", the "Video"/ “Screen” tab at the top should be showing. Increase the video memory (top slider) to 128MB and turn on "Enable 3D acceleration". Optional: click "**System**", then click the "Processor" tab at the top, and increase the number of processors (cores). Click OK at the bottom right of the VM Settings window. |
| 10 | On the top left, in the main VirtualBox VM Manager window, ensure the hcp course VM is still selected, then click the "**Start**" button at the top. |
| 11 | In the new window, wait for the machine to finish booting, and give a login screen, then click on **Shared Admin**, with password ‘hcpcourse’. Steps 12-16 will setup the correct graphics/3D accerleration options for running the VM. |
| 12 | Open a terminal window with the shortcut on the top panel, type the following: ```
$ sudo vmware-uninstall-tools.pl
```

Press enter, when prompted for password, enter the same password ‘hcpcourse’ for Shared Admin again. |
| 13 | Once that is finished, click **System** on the top panel, choose "Shut Down", and click "Restart" on the prompt. |
| 14 | Log in as Shared Admin, as in step 11. |
| 15 | Hold down the left command key on Mac and press "D", this is the shortcut to mount the Guest Extensions disk. A prompt should appear, choose "**Run/Run software**", (there may also be an AutoRun prompt, if so choose “Run AutoRun”, then “Run” on the second prompt), then enter the Shared Admin password ‘hcpcourse’ when prompted, wait for the process to finish.If instead of a prompt you get an error that says that you need to install a CD/DVD Drive, first shutdown the system completely (click **System**>Shut Down>Shut Down). * Click “**Settings**” in the VM Manager, then “Storage”.
* Next to **Controller: IDE Controller** click the plus button over the icon of a CD.
* At the prompt, choose “**Leave Empty**” and click “OK”.
* Then double click on the VM to Start it again and repeat steps 14-15.
 |
| 16 | Reboot, as per step 13. |
| 17 | Log in as HCP Course, with password ‘hcpcourse’. You can now follow the instructions in the **[course practical PDFs](http://humanconnectome.org/courses/2015/exploring-the-human-connectome.php)** and run the practicals within the VM. The practical PDFs are also located within the VM on the Desktop “HCP\_Course\_PDFs/Practicals\_Final” folder. |

> [!info] 
> Note on following the HCP Course Practical Instructions:  Users may find cutting and pasting commands used in many of the instructions for the practicals easier using the text files in the HCP\_Course\_Practicals\_txt\_commands folder available in the VM through the  Desktop “HCP\_Course\_PDFs/Practicals\_Final” folder or by download from wustl.box.com in the 2015\_Practicals\_for\_Distribution folder.
 

 

