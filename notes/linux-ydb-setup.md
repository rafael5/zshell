# based on ubuntu 20.04 server


# yottadb 
# ------------------------------------------------------------------
# https://yottadb.com/product/get-started/

# download
mkdir /tmp/tmp ; wget -P /tmp/tmp https://gitlab.com/YottaDB/DB/YDB/raw/master/sr_unix/ydbinstall.sh
# make executable
cd /tmp/tmp ; chmod +x ydbinstall.sh
# prerequisite
sudo apt-get install --no-install-recommends libtinfo5
# install
sudo ./ydbinstall.sh --utf8 default --verbose --overwrite-existing
# To list all options:
./ydbinstall.sh --help
# Set environment variables and create a default environment in $HOME/.yottadb
source $(pkg-config --variable=prefix yottadb)/ydb_env_set

=> Command 'pkg-config' not found, but can be installed with:
sudo apt install pkg-config  # version 0.29.1-0ubuntu4, or
sudo apt install pkgconf     # version 1.6.3-5
# ------------------------------------------------------------------


# ydb aliases
# ------------------------------------------------------------------
alias ydb-options='cd /tmp/tmp/; ./ydbinstall.sh --help'
alias ydb-env-set='source $(pkg-config --variable=prefix yottadb)/ydb_env_set'




# ydb configuration
# ------------------------------------------------------------------
Processed command line
gtm_buildtype  :  pro
ydb_deprecated  :  Y
gtm_dryrun  :  N
ydb_encplugin  :  N
ydb_force_install  :  N
gtm_group_already  :  N
gtm_group_restriction  :  N
ydb_icu_version  :  default
gtm_keep_obj  :  N
gtm_lcase_utils  :  Y
ydb_octo  :  N
gtm_overwrite_existing  :  Y
ydb_posix  :  N
gtm_prompt_for_group  :  N
gtm_verbose  :  Y
ydb_zlib  :  N
gtm_gtm  :  N
timestamp  :  20210204021535
ydb_change_removeipc  :  yes
Determined architecture, OS and YottaDB/GT.M version
gtm_arch  :  x8664
gtm_buildtype  :  pro
ydb_deprecated  :  Y
gtm_dryrun  :  N
ydb_encplugin  :  N
ydb_flavor  :  x8664
ydb_force_install  :  N
gtm_ftp_dirname  :  linux_x8664
gtm_group_already  :  N
gtm_group_restriction  :  N
gtm_hostos  :  linux
ydb_icu_version  :  default
gtm_install_flavor  :  x86_64
gtm_keep_obj  :  N
gtm_lcase_utils  :  Y
ydb_octo  :  N
gtm_overwrite_existing  :  Y
ydb_posix  :  N
gtm_prompt_for_group  :  N
gtm_sf_dirname  :  GT.M-amd64-Linux
gtm_verbose  :  Y
ydb_zlib  :  N
gtm_gtm  :  N
timestamp  :  20210204021535
ydb_change_removeipc  :  yes



Downloaded and unpacked YottaDB/GT.M distribution
gtm_arch  :  x8664
gtm_buildtype  :  pro
ydb_deprecated  :  Y
ydb_distrib  :  https://gitlab.com/api/v4/projects/7957109/repository/tags
gtm_dryrun  :  N
ydb_encplugin  :  N
ydb_filename  :  yottadb_r130_ubuntu2004_x8664_pro.tgz
ydb_flavor  :  x8664
ydb_force_install  :  N
gtm_ftp_dirname  :  linux_x8664
gtm_group_already  :  N
gtm_group_restriction  :  N
gtm_hostos  :  linux
ydb_icu_version  :  default
gtm_install_flavor  :  x86_64
gtm_keep_obj  :  N
gtm_lcase_utils  :  Y
ydb_octo  :  N
gtm_overwrite_existing  :  Y
ydb_posix  :  N
gtm_prompt_for_group  :  N
gtm_sf_dirname  :  GT.M-amd64-Linux
gtm_tmpdir  :  /tmp/tmp.u453r0FhTD
gtm_verbose  :  Y
ydb_version  :  r1.30
ydb_zlib  :  N
gtm_gtm  :  N
timestamp  :  20210204021535
ydb_change_removeipc  :  yes
Finished checking options and assigning defaults
gtm_arch  :  x8664
gtm_buildtype  :  pro
ydb_deprecated  :  Y
ydb_distrib  :  https://gitlab.com/api/v4/projects/7957109/repository/tags
gtm_dryrun  :  N
ydb_encplugin  :  N
ydb_filename  :  yottadb_r130_ubuntu2004_x8664_pro.tgz
ydb_flavor  :  x8664
ydb_force_install  :  N
gtm_ftp_dirname  :  linux_x8664
gtm_group  :  root
gtm_group_already  :  N
gtm_group_restriction  :  N
gtm_hostos  :  linux
ydb_icu_version  :  default
gtm_install_flavor  :  x86_64
ydb_installdir  :  /usr/local/lib/yottadb/r130
gtm_keep_obj  :  N
gtm_lcase_utils  :  Y
ydb_octo  :  N
gtm_overwrite_existing  :  Y
ydb_posix  :  N
gtm_prompt_for_group  :  N
gtm_sf_dirname  :  GT.M-amd64-Linux
gtm_tmpdir  :  /tmp/tmp.u453r0FhTD
gtm_user  :  root
gtm_verbose  :  Y
ydb_version  :  r1.30
ydb_zlib  :  N
gtm_gtm  :  N
timestamp  :  20210204021535
ydb_change_removeipc  :  yes
Prepared configuration file
root
root
N
/usr/local/lib/yottadb/r130
y
y
n
y
Y
N
n
gtm_arch  :  x8664
gtm_buildtype  :  pro
gtm_configure_in  :  /tmp/tmp.u453r0FhTD/configure_20210204021535.in
ydb_deprecated  :  Y
ydb_distrib  :  https://gitlab.com/api/v4/projects/7957109/repository/tags
gtm_dryrun  :  N
ydb_encplugin  :  N
ydb_filename  :  yottadb_r130_ubuntu2004_x8664_pro.tgz
ydb_flavor  :  x8664
ydb_force_install  :  N
gtm_ftp_dirname  :  linux_x8664
gtm_group  :  root
gtm_group_already  :  N
gtm_group_restriction  :  N
gtm_hostos  :  linux
ydb_icu_version  :  default
gtm_install_flavor  :  x86_64
ydb_installdir  :  /usr/local/lib/yottadb/r130
gtm_keep_obj  :  N
gtm_lcase_utils  :  Y
ydb_octo  :  N
gtm_overwrite_existing  :  Y
ydb_posix  :  N
gtm_prompt_for_group  :  N
gtm_sf_dirname  :  GT.M-amd64-Linux
gtm_tmpdir  :  /tmp/tmp.u453r0FhTD
gtm_user  :  root
gtm_verbose  :  Y
ydb_version  :  r1.30
ydb_zlib  :  N
gtm_gtm  :  N
timestamp  :  20210204021535
ydb_change_removeipc  :  yes
YottaDB version r1.30 installed successfully at /usr/local/lib/yottadb/r130
YottaDB pkg-config file installed successfully at /usr/share/pkgconfig/yottadb.pc
# ------------------------------------------------------------------

