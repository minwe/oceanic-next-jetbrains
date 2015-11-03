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

# Create config file
echo -e '<application>\n  <component name="EditorColorsManagerImpl">\n    <global_color_scheme name="Oceanic Next" />\n  </component>\n</application>' > colors.scheme.xml
mkdir options
mv colors.scheme.xml options

# Create the JAR file
jar cfM settings.jar IntelliJ\ IDEA\ Global\ Settings colors options

# Cleanup
rm -r colors
rm -r options
rm IntelliJ\ IDEA\ Global\ Settings

echo "settings.jar generated"