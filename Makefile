# Produce PDFs from all Markdown files in a directory
# Lincoln Mullen | http://lincolnmullen.com | lincoln@lincolnmullen.com
# This makefile assumes pandoc is installed and configured. It doesn't
# check first.
#
# Installing and Configuring Pandoc
# The official Pandoc web site is: http://johnmacfarlane.net/pandoc/
#
# Installing the Necessary Software
# $ brew install haskell-platform
# $ xcode-select --install
# $ brew install gmp
# $ cabal update
# $ cabal install pandoc
# $ wget http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg
#
# Add cabal and texbin to your path (~/.bashrc): export PATH=$PATH:$HOME/.cabal/bin:/usr/texbin
#
# Create a single PDF out of all known files. Must update the makefile.
# Opted to not use recursion because I didn't actually want all README
# files from the cookbooks
FILES := 01-why-vagrant/README.md 02-installing-vagrant-virtualbox/README.md 03-adding-web-server/README.md 04-networking/README.md 05-file-sharing/README.md 06-config-management/README.md 07-provisioning-chef/README.md 08-install-drupal/README.md 09-planning-vm-use/README.md	extras-01-updating-vagrant/README.md extras-02-windows-ssh/README.md

once :
	pandoc $(FILES) -o README.pdf

# List files to be made by finding all *.md files and appending .pdf
# Only the looks in the current directory
PDFS := $(patsubst %.md,%.md.pdf,$(wildcard *.md))
 
# The all rule makes all the PDF files listed as separate PDFs.
# Only looks in the current directory
all : $(PDFS)

# This generic rule accepts PDF targets with corresponding Markdown 
# source, and makes them using pandoc
%.md.pdf : %.md
	pandoc $< -o $@
 
# Remove all PDF outputs
clean :
	rm $(PDFS)
 
# Remove all PDF outputs then build them again
rebuild : clean all
