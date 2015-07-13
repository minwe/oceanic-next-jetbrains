#!/bin/bash

# Create the "colors" directory for the scheme files
# and copy the .icls scheme files there
mkdir colors
cp Oceanic\ Next.icls colors

# Create .xml versions of all schemes for backwards compatibility
# cp colors/Oceanic\ Next.icls colors/Oceanic\ Next.icls.xml

# Create an empty "IntelliJ IDEA Global Settings" file,
# needed to be able to import the JAR using "Import Settings..."
touch IntelliJ\ IDEA\ Global\ Settings

# Create the JAR file
jar cfM settings.jar IntelliJ\ IDEA\ Global\ Settings colors

# Cleanup
rm -r colors
rm IntelliJ\ IDEA\ Global\ Settings

echo "settings.jar generated"