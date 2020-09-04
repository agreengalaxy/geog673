# Elizabeth Byrne
# Load libraries
library(ncdf4)
library(fields)

#load the file
ncFile <- ncdf4::nc_open("Documents/School Documents/Senior Year/GEOG 673/geog473-673-master/datasets/OR_ABI-L2-SSTF-M3_G16_s20192081300453_e20192081400161_c20192081406297.nc")

#load in the SST variable and save it as sstK
sstK <- ncdf4::ncvar_get(nc=ncFile, varid="SST")
summary(sstK)
#all the Vs mean that they are vectors and we need to vectorize the matrix

#read in the lat and long
lat <- ncdf4::ncvar_get(nc=ncFile, varid="latitude")
lon <- ncdf4::ncvar_get(nc=ncFile, varid="longitude")

# convert sst from Kelvin to Celsius
sstC <- sstK - 273.15

# remove values below 0C
#bracket means "where"
sstC[sstC < 0] = NA

# Plot the matrix
fields::image.plot(x=lon, y=lat, z=sstC, legend.lab="Celsius")
title("GOES-R SST Product 7/25/2019 19:00 UTC")

#Now try it with the data quality flag variable (DQF)

#load in the DQF variable and save it as DQF
DQF <- ncdf4::ncvar_get(nc=ncFile, varid="DQF")
summary(DQF)

#read in the lat and long
lat <- ncdf4::ncvar_get(nc=ncFile, varid="latitude")
lon <- ncdf4::ncvar_get(nc=ncFile, varid="longitude")

#plot DQF
fields::image.plot(x=lon, y=lat, z=DQF, legend.lab="Level")+title("GOES-R DQF Product 7/25/2019 19:00 UTC")

