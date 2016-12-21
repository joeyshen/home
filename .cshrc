
umask 022

if ( ! $?PATH ) then
  setenv PATH                           /bin:/sbin
endif
if ( "$PATH" !~ *".:"* ) then
  setenv PATH                           .:${PATH}
endif
if ( "$PATH" !~ *"/vault/Any/tools"* ) then
  setenv PATH                           /vault/Any/tools:${PATH}
endif
if ( "$PATH" !~ *"/bin"* ) then
  setenv PATH                           ${PATH}:/bin
endif
if ( "$PATH" !~ *"/sbin"* ) then
  setenv PATH                           ${PATH}:/sbin
endif
if ( "$PATH" !~ *"/usr/bin"* ) then
  setenv PATH                           ${PATH}:/usr/bin
endif
if ( "$PATH" !~ *"/usr/sbin"* ) then
  setenv PATH                           ${PATH}:/usr/sbin
endif
if ( "$PATH" !~ *"/usr/local/bin"* ) then
  setenv PATH                           ${PATH}:/usr/local/bin
endif
if ( "$PATH" !~ *"/usr/local/sbin"* ) then
  setenv PATH                           ${PATH}:/usr/local/sbin
endif

if ( ! $?LD_LIBRARY_PATH ) then
  setenv LD_LIBRARY_PATH                /lib
endif
if ( "$LD_LIBRARY_PATH" !~ *"/lib"* ) then
  setenv LD_LIBRARY_PATH                ${LD_LIBRARY_PATH}:/lib
endif
if ( "$LD_LIBRARY_PATH" !~ *"/usr/lib"* ) then
  setenv LD_LIBRARY_PATH                ${LD_LIBRARY_PATH}:/usr/lib
endif
if ( "$LD_LIBRARY_PATH" !~ *"/usr/local/lib"* ) then
  setenv LD_LIBRARY_PATH                ${LD_LIBRARY_PATH}:/usr/local/lib
endif
if ( "$LD_LIBRARY_PATH" !~ *"/usr/dt/lib"* ) then
  if ( -d "/usr/dt/lib" ) then
    setenv LD_LIBRARY_PATH              ${LD_LIBRARY_PATH}:/usr/dt/lib
  endif
endif


set cdpath=(. ~)

set no_colors="%{\e[0m%}"
set colors1="%{\e[36m%}"
alias set_prompt     'set prompt="`whoami`@`hostname`(`uname`):\n $colors1$cwd \[\!\] >$no_colors "'
set_prompt

set autolist


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
