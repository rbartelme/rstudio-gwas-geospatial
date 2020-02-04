# rstudio-gwas-geospatial

This docker file is used to implement rTASSEL within the rocker rstudio and Tyson Swetnam's geospatial implementation of rocker rstudio.

It is intented to be used on https://www.cyverse.org/ in the Discovery Environment.
# Running rTASSEL on CyVerse

## How to run GWAS with rTASSEL in the Cyverse DE

This tutorial assumes that you already have an account registered at CyVerse.org:


	* Loading the Docker Container in the CyVerse Discovery Environment
	* Logging in to RStudio
	* Configuring iRODS in the RStudio Terminal for File Transfers
	* Importing the haplotype map file into RStudio

## Loading the Docker Container in the CyVerse Discovery Environment
	* Login to CyVerse Discovery Environment
	* Search the Apps for rstudio-rTassel-Geospatial 

## Login to RStudio Instance
	* Wait for container to load
	* When prompted at the login screen enter the username as Rstudio and password as Rstudio1

## Import the data into RStudio instance with iRODS
	* Configure iRODS from the Terminal in RStudio by running the command iinit:
	+ DNS: data.cyverse.org
	+ Port number: 1247
	+ irods zone: iplant
	+ irods user name: cyverse-username
	+ Enter current iRODS password: cyverse-password
	* Change to the directory with the hapmap file:
	+ icd /iplant/home/shared/terraref/genomics/derived_data/bap/resequencing/danforth_center/version1/hapmap
	* Get the data into RStudio container environment (NOTE: This may take some time)
	+ iget -K all_combined_genotyped_lines_SNPS_052217.recalibrated_vcftools.filtered.recode.hmp.txt (this will take a while)
	+ After loading file, rename with mv to sorghumhap.hmp.txt
 
###For more information on iRODS commands, see:
https://https://wiki.cyverse.org/wiki/display/DS/Using+iCommands
 
