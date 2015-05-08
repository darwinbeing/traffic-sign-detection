# By downloading, copying, installing or using the software you agree to this license.
# If you do not agree to this license, do not download, install,
# copy or use the software.
#
#
#                          License Agreement
#               For Open Source Computer Vision Library
#                       (3-clause BSD License)
#
# Copyright (C) 2015, 
#	  Guillaume Lemaitre (g.lemaitre58@gmail.com), 
#	  Johan Massich (mailsik@gmail.com),
#	  Gerard Bahi (zomeck@gmail.com),
#	  Yohan Fougerolle (Yohan.Fougerolle@u-bourgogne.fr).
# Third party copyrights are property of their respective owners.
#
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
#
#  * Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
#  * Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
#  * Neither the names of the copyright holders nor the names of the contributors
#    may be used to endorse or promote products derived from this software
#    without specific prior written permission.
#
# This software is provided by the copyright holders and contributors "as is" and
# any express or implied warranties, including, but not limited to, the implied
# warranties of merchantability and fitness for a particular purpose are disclaimed.
# In no event shall copyright holders or contributors be liable for any direct,
# indirect, incidental, special, exemplary, or consequential damages
# (including, but not limited to, procurement of substitute goods or services;
# loss of use, data, or profits; or business interruption) however caused
# and on any theory of liability, whether in contract, strict liability,
# or tort (including negligence or otherwise) arising in any way out of
# the use of this software, even if advised of the possibility of such damage.

TEMPLATE   = app
CONFIG    += console
QT        -= gui

# Header files
HEADERS  += ./src/segmentation.h \
             ./src/colorConversion.h \
             ./src/imageProcessing.h \
             ./src/smartOptimisation.h \
             ./src/SuperFormula.h \
             ./src/random-standalone.h \
             ./src/math_utils.h

# Source files
SOURCES   += ./src/main.cpp \
             ./src/segmentation.cpp \
             ./src/colorConversion.cpp \
             ./src/smartOptimisation.cpp \
             ./src/imageProcessing.cpp \
             ./src/SuperFormula.cpp \
             ./src/random-standalone.cpp 
             

# Support c++11
QMAKE_CXXFLAGS += -std=c++11

# Configuration via pkg-config
CONFIG += link_pkgconfig

# Add the library needed
PKGCONFIG += opencv eigen3
