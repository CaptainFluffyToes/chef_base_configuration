name 'base_configuration'
maintainer 'Darren Khan'
maintainer_email 'djkhan85@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures base_configuration'
long_description 'Installs/Configures base_configuration'
version '0.2.14'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/CaptainFluffyToes/base_configuration/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/CaptainFluffyToes/base_configuration'

# Changelog
# [10/9/2017] - 0.1.1 - Added the chef-client cookbook
# [10/9/2017] - 0.1.2 - Updated default.rb to include the chef-client attributes
# [10/11/2017] - 0.1.3 - Added setup.rb to the recipe list to install the correct packages
# [10/11/2017] - 0.1.4 - Added bind mount information
# [10/11/2017] - 0.1.5 - Recreated bind mount and updated freenas with the right user groups and file shares
# [10/12/2017] - 0.1.6 - Added creation of the Media directory before the mount
# [10/13/2017] - 0.1.7 - Removed creation of the Media director and the bind mount because this cookbook doesn't need that
# [10/15/2017] - 0.1.7 - Added GIT installation
# [10/16/2017] - 0.1.8 - Added apt-transport-https and updated berksfile with local chef server
# [10/16/2017] - 0.1.9 - Added gnupg2 installation package and other packages needed for basic docker installation
# [10/16/2017] - 0.1.10 - Moved docker installation packages to the docker configuration cookbook
# [10/16/2017] - 0.1.11 - Added apt_update
# [10/16/2017] - 0.2.0 - Removed CIFS installation.
# [10/16/2017] - 0.2.1 - Added https transport before apt update.
# [10/28/2017] - 0.2.2 - Cleaned up code style.
# [12/19/2017] - 0.2.3 - Added code for dynamic hostname.
# [12/19/2017] - 0.2.4 - Added OHAI reload after hostname change.
# [12/23/2017] - 0.2.5 - Changed hostname to not check if it's 'core' but to check if it's in the right '.solsys.com' format.  Updated jenkinsfile with pollscm.
# [12/25/2017] - 0.2.6 - Changed the ohai comparision from hostname to machinename. hostname did not include .solsys.com and that meant the name changed all the time. 
# [12/28/2017] - 0.2.7 - Removed OHAI information reload.
# [12/28/2017] - 0.2.8 - Updated /etc/hosts renaming to not look for a specific name.
# [12/28/2017] - 0.2.9 - Add "" around $hostname for /etc/hosts modification.
# [12/28/2017] - 0.2.10 - replaced AWK with SED command.
# [12/28/2017] - 0.2.11 - removed configuration data for chef-client run.
# [12/30/2017] - 0.2.12 - Changed time to be 6 minutes for testing.
# [12/30/2017] - 0.2.13 - Combined naming with if statement that checks for debian.  Removed sudo as installed package.  Updated the splay and interval time back to 900.
# [02/06/2018] - 0.2.14 - Added script to find the next avialable static ip address.

depends 'chef-client'
