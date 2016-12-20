
set path=(. /sbin /bin /usr/bin $path)


# Synopsys license path
setenv SNPSLMD_LICENSE_FILE 27000@localhost
#setenv LM_LICENSE_FILE /home/synopsys/license/license.dat
setenv LM_LICENSE_FILE 27000@localhost

# Synopsys home directory
setenv SYNOPSYS_HOME /home/synopsys

# Synopsys license manager
set path=($SYNOPSYS_HOME/scl/11.11.1/linux64/bin $path)

# VCS
setenv VCS_HOME $SYNOPSYS_HOME/vcsmx/2014.03
set path=($VCS_HOME/bin $path)

# Verdi
setenv VERDI_HOME $SYNOPSYS_HOME/verdi/2015.09-SP1-1
set path=($VERDI_HOME/bin $path)

# XA
set path=(/home5/EDATools/synopsys/xa/K-2015.06/bin $path)



## Cadence part
# license path
setenv CDS_LIC_FILE /usr/cadence/license.dat

# Alias
alias lmli2 "lmgrd -c /home/synopsys/license/license.dat -l ~/snps_lic.log"

alias v gvim
alias gv gvim
alias sc source ~/.cshrc
alias la ll -a
