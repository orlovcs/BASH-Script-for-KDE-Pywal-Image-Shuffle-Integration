# BASH-Script-for-KDE-Pywal-Image-Shuffle-Integration


## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Prerequisites](#prerequisites)
* [Usage](#usage)


## About The Project

This is a CLI tool to allow setting a KDE wallpaper and a custom terminal theme based on this wallpaper with a provided path.

### Built With

* []() PyWal

### Prerequisites

Install the following packages.

* PyWal (https://github.com/dylanaraps/pywal)

## Usage

Clone and execute ```kdecolor.sh ```with:

One command line argument specifies the path for one image which will be set as the new wallpaper and terminal theme source. 
```sh
./kdecolor.sh "/home/user/wallpapers/wallpaper.x"
```

Two command line arguments specify the path for one image from the first path to be copied over to the second path which will then be set as the new wallpaper and terminal theme source. 
```sh
./kdecolor.sh "/home/user/wallpapers_green/wallpaper.x" "/home/user/wallpapers_very_green/wallpaper.x"
```